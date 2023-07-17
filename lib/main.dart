import 'package:e_commerce/config/router/router.dart';
import 'package:e_commerce/config/theme/app_theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
