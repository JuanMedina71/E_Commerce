import 'package:flutter/material.dart';

class CustomDescriptionField extends StatelessWidget {
  final TabController tabController;
  final String text;

  const CustomDescriptionField ({
    super.key,
    required this.tabController,
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        focusColor: Colors.red,
        filled: true,
        fillColor: Colors.white,
        hintText: text,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)).copyWith(borderSide: BorderSide(color: Colors.deepPurple)),
        focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(20)).copyWith(borderSide: BorderSide(color: Colors.deepPurpleAccent)),
        suffixIcon: Icon(Icons.description_outlined, color: Colors.deepPurple,),
        contentPadding: const EdgeInsets.only(bottom: 10.0, top: 12.5, left: 10),
        
      ),

    );
  }
}