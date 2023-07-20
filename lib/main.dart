import 'package:e_commerce/config/router/router.dart';
import 'package:e_commerce/config/theme/app_theme.dart';
import 'package:e_commerce/models/models.dart';
import 'package:e_commerce/presentation/blocs/swipe/swipe_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SwipeBloc()..add(LoadUsers (users: User.users)),
        )
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
      ),
    );
  }
}
