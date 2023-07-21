import 'package:go_router/go_router.dart';
import 'package:restaurant_delivery/persentation/page/forgot_password_page.dart';
import 'package:restaurant_delivery/persentation/page/intro_page.dart';
import 'package:restaurant_delivery/persentation/page/login_by_phone_page.dart';
import 'package:restaurant_delivery/persentation/page/login_page.dart';
import 'package:restaurant_delivery/persentation/page/register_page.dart';

final GoRouter router = GoRouter(
  initialLocation: IntroPage.routeName,
  routes: <RouteBase>[
    GoRoute(
      path: IntroPage.routeName,
      builder: (context, state) => const IntroPage(),
    ),
    GoRoute(
      path: LoginPage.routerName,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: ForgotPasswordPage.routeName,
      builder: (context, state) => const ForgotPasswordPage(),
    ),
    GoRoute(
      path: RegisterPage.routeName,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: LoginByPhonePage.routeName,
      builder: (context, state) => const LoginByPhonePage(),
    ),
  ],
);
