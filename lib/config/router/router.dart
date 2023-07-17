import 'package:e_commerce/presentation/screens/homeScreen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen()
      )
  ]
  
  );
