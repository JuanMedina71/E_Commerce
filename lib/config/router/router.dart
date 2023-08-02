import 'package:e_commerce/presentation/cubits/signup/signup_cubit.dart';
import 'package:e_commerce/presentation/screens/screens.dart';
import 'package:e_commerce/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BlocProvider(
        create: (_) => SignupCubit(authRepository: context.read<AuthRepository>(),),
        child:const BoardingScreen(),                                                  
      ),
      ),
    GoRoute(
      path: '/users',
      builder: (context, state) => const UserScreen(),
    ),
    GoRoute(
      path: '/boarding',
      builder: (context, state) => const BoardingScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ]
  
  );
