import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';
import 'package:e_commerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Demo extends StatelessWidget {
  final TabController tabController;
  
  const Demo({
    super.key,
    required this.tabController
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
            children: [
                const SizedBox(height: 25),
                CustomTextHeader(tabController: tabController, text: '¿Cual es tu genero?',),
                const SizedBox(height: 20),

                CustomCheckBox(tabController: tabController, text: 'MASCULINO',),
                CustomCheckBox(tabController: tabController, text: 'FEMENINO',),

                const SizedBox(height: 20),
                CustomTextHeader(tabController: tabController, text: '¿Cual es tu edad?',),


            ],
          ),
Column(
               children: [
                 const StepProgressIndicator(totalSteps: 5, currentStep: 3, selectedColor: Colors.deepPurple, unselectedColor: Colors.black26,),
             const SizedBox(height: 15,),
             CustomButton(tabController: tabController, text: 'NEXT STEP'),

               ],

             ),            
            
        ],
      ), 
      
   );
  }
}