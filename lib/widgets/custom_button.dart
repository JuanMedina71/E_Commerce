import 'package:e_commerce/presentation/cubits/signup/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  final TabController tabController;
  final String text;

  const CustomButton({
    super.key, 
    required this.tabController,
    this.text = 'START',
    });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Colors.red,
              Theme.of(context).primaryColor,
            ])),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0, backgroundColor: Colors.transparent),
          onPressed: () {
            tabController.animateTo(tabController.index + 1);
            if(tabController.index == 2) {
              context.read<SignupCubit>().signupWithCredentials();
            }
          },
          child: SizedBox(
              width: double.infinity,
              child: Center(
                  child: Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white)))),
        ));
  }
}
