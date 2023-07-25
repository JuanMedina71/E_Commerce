import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class Picture extends StatelessWidget {
  final TabController tabController;

  const Picture ({
    super.key,
    required this.tabController
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                const SizedBox(height: 25),
                CustomTextHeader(tabController: tabController, text: 'Añade 2 Imagenes sobre ti',),
                const SizedBox(height: 20),
                
                Row(
                  children: [
                    CustomImageContainer(tabController: tabController),
                    CustomImageContainer(tabController: tabController),
                    CustomImageContainer(tabController: tabController),

                  ],
                ),
                Row(
                  children: [
                    CustomImageContainer(tabController: tabController),
                    CustomImageContainer(tabController: tabController),
                    CustomImageContainer(tabController: tabController),

                  ],
                ),                
            ],
          ),
             CustomButton(tabController: tabController, text: 'NEXT STEP'),
            
        ],
      ), 
      );
  }
}