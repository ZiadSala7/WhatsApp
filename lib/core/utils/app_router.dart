import 'package:go_router/go_router.dart';
import 'package:whats_app/components/splash/presentation/views/splash_view.dart';

class AppRouter {
  static final appRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
