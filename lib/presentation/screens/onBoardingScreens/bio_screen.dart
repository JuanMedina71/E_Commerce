import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Biography extends StatelessWidget {
  final TabController tabController;

  const Biography ({
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
                CustomTextHeader(tabController: tabController, text: 'Describete a ti mismo',),
                const SizedBox(height: 30),
                CustomDescriptionField(tabController: tabController, text: 'DESCRIPCIÓN BREVE',),  
                const SizedBox(height: 30),
                CustomTextHeader(tabController: tabController, text: '¿Cuales son tus gustos?',),
                const SizedBox(height: 30),


            ],
          ),
             CustomButton(tabController: tabController, text: 'NEXT STEP'),
            
            
        ],
      ), 
      );
  }
}