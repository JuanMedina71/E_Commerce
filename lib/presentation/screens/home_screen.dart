import 'package:flutter/material.dart';
import 'package:e_commerce/models/models.dart';
import 'package:e_commerce/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          UserCard(user: User.users[0]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChoiceButton(
                  height: 60, 
                  width: 60, 
                  color: Theme.of(context).canvasColor,
                  hasGradient: false,
                  icon: Icons.clear_rounded, 
                  size: 25,
                  ),
                ChoiceButton(
                  height: 80, 
                  width: 80, 
                  color: Theme.of(context).cardColor,
                  hasGradient: true, 
                  icon: Icons.favorite_outline_rounded, 
                  size: 25,
              ), 
                ChoiceButton(
                  height: 60, 
                  width: 60, 
                  color: Theme.of(context).cardColor,
                  hasGradient: false, 
                  icon: Icons.watch_later_outlined, 
                  size: 25,
              ), 
              ],
            ),
          ),
 
        ],
      ),
    );
  }
}



