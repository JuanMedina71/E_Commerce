import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  final TabController tabController;
  
  const Email({
    super.key,
    required this.tabController
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
            children: [
                const SizedBox(height: 25),
                CustomTextHeader(tabController: tabController, text: 'Ingresa tu correo electronico',),
                CustomTextField()  

            ],
          ),
             CustomButton(tabController: tabController, text: 'NEXT STEP'),
            
        ],
      ), 
      );
  }
}