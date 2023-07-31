import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:e_commerce/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Biography extends StatelessWidget {
  final TabController tabController;

  const Biography({super.key, required this.tabController});

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
              CustomTextHeader(
                tabController: tabController,
                text: 'Describete a ti mismo',
              ),
              const SizedBox(height: 30),
              CustomDescriptionField(
                tabController: tabController,
                text: 'DESCRIPCIÓN BREVE',
              ),
              const SizedBox(height: 80),
              CustomTextHeader(
                tabController: tabController,
                text: '¿Cuales son tus gustos?',
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  CustomContainer(tabController: tabController, text: 'MUSIC'),
                  CustomContainer(tabController: tabController, text: 'PARTY'),
                  CustomContainer(tabController: tabController, text: 'DRINKS'),
                  CustomContainer(tabController: tabController, text: 'COFFE'),
                ],
              ),
              Row(
                children: [
                  CustomContainer(
                      tabController: tabController, text: 'Informal Dates'),
                  CustomContainer(
                      tabController: tabController, text: 'Animals'),
                  CustomContainer(
                      tabController: tabController, text: 'Mental Healthy'),
                ],
              ),
            ],
          ),
          Column(
            children: [
              const StepProgressIndicator(
                totalSteps: 5,
                currentStep: 5,
                selectedColor: Colors.deepPurple,
                unselectedColor: Colors.black26,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButton(tabController: tabController, text: 'NEXT STEP'),
            ],
          ),
        ],
      ),
    );
  }
}
