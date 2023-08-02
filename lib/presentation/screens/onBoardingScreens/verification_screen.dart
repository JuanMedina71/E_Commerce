import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Verification extends StatelessWidget {
  final TabController tabController;

  
  const Verification({
    super.key,
    required this.tabController    
    });

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
            children: [
                const SizedBox(height: 25),
                CustomTextHeader(tabController: tabController, text: 'Ingresa tu código de verificación',),
                const SizedBox(height: 30),
                CustomVerificationField(tabController: tabController, text: 'CÓDIGO DE VERIFICACIÓN', controller: controller),  
                const SizedBox(height: 30),

            ],
          ),
          Column(
               children: [
                 const StepProgressIndicator(totalSteps: 5, currentStep: 2, selectedColor: Colors.deepPurple, unselectedColor: Colors.black26,),
             const SizedBox(height: 15,),
             CustomButton(tabController: tabController, text: 'NEXT STEP'),

               ],

             ),            
            
        ],
      ), 
      
      );
  }
}