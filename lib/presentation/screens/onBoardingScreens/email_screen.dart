import 'package:e_commerce/presentation/cubits/signup/signup_cubit.dart';
import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';
import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Email extends StatelessWidget {
  final TabController tabController;

  const Email({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<SignupCubit, SignupState>(
        builder: (context, state) {
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
                      text: 'Ingresa tu correo electronico',
                    ),
                    const SizedBox(height: 30),
                    CustomTextField(
                      tabController: tabController,
                      text: 'INGRESA TU CORREO',
                      onChanged: (value) {
                        context.read<SignupCubit>().emailChanged (value);
                      },
                    ),
                    const SizedBox(height: 100),
                    CustomTextHeader(
                      tabController: tabController,
                      text: 'Ingresa una contraseña',
                    ),
                    const SizedBox(height: 30),
                    CustomTextField(
                      tabController: tabController,
                      text: 'CONTRASEÑA',
                      onChanged: (value) {
                        context.read<SignupCubit>().passwordChanged(value);
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 275,
                    ),
                    const StepProgressIndicator(
                      totalSteps: 5,
                      currentStep: 1,
                      selectedColor: Colors.deepPurple,
                      unselectedColor: Colors.black26,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      tabController: tabController,
                      text: 'NEXT STEP',
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
