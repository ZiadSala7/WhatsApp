import 'package:go_router/go_router.dart';
import 'package:whats_app/components/on_accept/presentation/views/on_accept.dart';
import 'package:whats_app/components/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const String onAccept = '/onAccept';

  static final appRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouter.onAccept,
        builder: (context, state) => const OnAcceptPage(),
      ),
    ],
  );
}
