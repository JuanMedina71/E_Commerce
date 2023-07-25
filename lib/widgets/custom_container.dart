import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final TabController tabController;
  final String text;


  const CustomContainer({
    super.key, 
    required this.tabController,
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}