import 'package:e_commerce/presentation/screens/onBoardingScreens/bio_screen.dart';
import 'package:e_commerce/presentation/screens/onBoardingScreens/picture_screen.dart';
import 'package:e_commerce/presentation/screens/onBoardingScreens/verification_screen.dart';
import 'package:e_commerce/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/presentation/screens/onBoardingScreens/on_boarding_screens.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});


  static const List<Tab> tabs = <Tab> [
    Tab(text: 'Start'),
    Tab(text: 'Email'),
    Tab(text: 'Verification'),
    Tab(text: 'Demo'),
    Tab(text: 'Pictures'),
    Tab(text: 'Biography'),


  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: tabs.length, child: 
    Builder(
      builder: (BuildContext context) {
         final TabController tabController = DefaultTabController.of(context);
         tabController.addListener(() {
          if(!tabController.indexIsChanging) {

          }
         });
    return  Scaffold(
      appBar: const CustomAppBar(
        title: 'REGISTRATE',
        hasActions: false,
      ),
      body: TabBarView(children: [
        Start(tabController: tabController),
        Email(tabController: tabController),
        Verification(tabController: tabController),
        Demo(tabController: tabController),
        Picture(tabController: tabController),
        Biography(tabController: tabController),

      ]),
    );
  }),
    );
  }
}