import 'package:e_commerce/config/router/router.dart';
import 'package:e_commerce/config/theme/app_theme.dart';
import 'package:e_commerce/models/models.dart';
import 'package:e_commerce/presentation/blocs/auth/auth_bloc.dart';
import 'package:e_commerce/presentation/blocs/swipe/swipe_bloc.dart';
import 'package:e_commerce/repositories/auth_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (_) => AuthRepository(),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => AuthBloc(
              authRepository: context.read<AuthRepository>(),
            ),
          ),
          BlocProvider(
            create: (_) => SwipeBloc()..add(LoadUsers(users: User.users)),
          )
        ],
        child: MaterialApp.router(
          routerConfig: appRouter,
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
        ),
      ),
    );
  }
}
