import 'package:easy_rest/features/splach_feature/views/screens/over_view_screen.dart';
import 'package:easy_rest/features/splach_feature/views/screens/splach_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouting {
  static final String kinitialRout = '/';
  static final String kSplachRout = '/splach';
  static final String kOverViewRout = '/overview';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kinitialRout,
        builder: (context, state) => const SplachScreen(),
      ),
      GoRoute(
        path: kOverViewRout,
        builder: (context, state) => const OverViewScreen(),
      ),
    ],
  );
}
