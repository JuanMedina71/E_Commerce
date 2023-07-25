import 'package:e_commerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  final TabController tabController;
  
  const Start({
    super.key, 
    required this.tabController
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 50),
              Container(
                height: 300,
                width: 300,
                child: Image.asset('assets/start.png'),
              ),
             const SizedBox(height: 20),
             Text('Welcome to Arrow', style: Theme.of(context).textTheme.displaySmall),
             const SizedBox(height: 20),
             Text('Nisi magna laboris irure culpa velit aliquip veniam ad pariatur laboris laborum excepteur dolor. Dolor sint tempor consequat pariatur anim sint nulla nostrud pariatur culpa excepteur sint duis. Fugiat nulla commodo excepteur ad.',
             textAlign: TextAlign.center,
             ),
             const SizedBox(height: 20),

            ],
          ),
             CustomButton(tabController: tabController,),
        ],
      ), 
      );
  }
}