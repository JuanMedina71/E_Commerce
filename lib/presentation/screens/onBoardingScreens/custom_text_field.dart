import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TabController tabController;
  final String text;

  const CustomTextField ({
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
        suffixIcon: Icon(Icons.email_rounded, color: Colors.deepPurple,),
        contentPadding: const EdgeInsets.only(bottom: 5.0, top: 12.5, left: 10),
        
      ),

    );
  }
}