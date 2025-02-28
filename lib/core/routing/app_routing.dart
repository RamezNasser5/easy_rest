import 'package:easy_rest/features/auth_feature/logic/cubits/forget_password_ploc/forget_password_bloc.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:easy_rest/features/auth_feature/ui/screens/forgot_password_screen.dart';
import 'package:easy_rest/features/auth_feature/ui/screens/signin_screen.dart';
import 'package:easy_rest/features/auth_feature/ui/screens/signup_screen.dart';
import 'package:easy_rest/features/home_feature/views/screens/home_screen.dart';
import 'package:easy_rest/features/splach_feature/views/screens/over_view_screen.dart';
import 'package:easy_rest/features/splach_feature/views/screens/splach_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouting {
  static final String kinitialRout = '/';
  static final String kSplachRout = '/splach';
  static final String kOverViewRout = '/overview';
  static final String kSignInRout = '/signin';
  static final String kSignUpRout = '/signup';
  static final String kForgotPasswordRout = '/forgot-password';
  static final String kHomeRout = '/home';

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
      ),
      GoRoute(
        path: kSignUpRout,
        builder: (context, state) => BlocProvider(
          create: (context) => SignupCubit(),
          child: const SignupScreen(),
        ),
      ),
      GoRoute(
        path: kForgotPasswordRout,
        builder: (context, state) => BlocProvider(
          create: (context) => ForgetPasswordBloc(),
          child: const ForgotPasswordScreen(),
        ),
      ),
      GoRoute(
        path: kHomeRout,
        builder: (context, state) => const HomeScreen(),
      )
    ],
  );
}
