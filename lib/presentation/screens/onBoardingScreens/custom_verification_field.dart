import 'package:flutter/material.dart';

class CustomVerificationField extends StatelessWidget {
  final TextEditingController controller;
  final TabController tabController;
  final String text;

  const CustomVerificationField ({
    super.key,
    required this.controller,
    required this.tabController,
    required this.text, 
    });

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        focusColor: Colors.red,
        filled: true,
        fillColor: Colors.white,
        hintText: text,
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20)).copyWith(borderSide: const BorderSide(color: Colors.deepPurple)),
        focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(20)).copyWith(borderSide: const BorderSide(color: Colors.deepPurpleAccent)),
        suffixIcon: const Icon(Icons.lock_outline_rounded, color: Colors.deepPurple,),
        contentPadding: const EdgeInsets.only(bottom: 5.0, top: 12.5, left: 10),
        
      ),

    );
  }
}