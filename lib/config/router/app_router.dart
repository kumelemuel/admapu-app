import 'package:go_router/go_router.dart';
import 'package:admapu/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      name: SplashPage.name,
      builder: (context, state) => const SplashPage()),
  GoRoute(
      path: '/',
      name: HomePage.name,
      builder: (context, state) => const HomePage()),
  GoRoute(
      path: '/',
      name: LoginPage.name,
      builder: (context, state) => const LoginPage()),
]);
