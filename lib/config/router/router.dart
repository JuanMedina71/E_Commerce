import 'package:e_commerce/presentation/screens/boarding_screen.dart';
import 'package:e_commerce/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const BoardingScreen()
      ),
    GoRoute(
      path: '/users',
      builder: (context, state) => const UserScreen(),
    ),
  ]
  
  );
