import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/views/login_view.dart';
import '../../features/on_accept/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static const String onAccept = '/onAccept';
  static const String loginView = '/loginView';

  static final appRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouter.onAccept,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: AppRouter.loginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
