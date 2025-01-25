import 'package:easy_rest/features/auth_feature/logic/cubits/cubit/sign_in_cubit.dart';
import 'package:easy_rest/features/auth_feature/ui/screens/signin_screen.dart';
import 'package:easy_rest/features/splach_feature/views/screens/over_view_screen.dart';
import 'package:easy_rest/features/splach_feature/views/screens/splach_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouting {
  static final String kinitialRout = '/';
  static final String kSplachRout = '/splach';
  static final String kOverViewRout = '/overview';
  static final String kSignInRout = '/signin';

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
      GoRoute(
        path: kSignInRout,
        builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(),
          child: const SigninScreen(),
        ),
      )
    ],
  );
}
