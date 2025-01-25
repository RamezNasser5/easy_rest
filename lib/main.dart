import 'package:easy_rest/core/routing/app_routing.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/signin_cubit/sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => SignInCubit(),
    child: const EasyRest(),
  ));
}

class EasyRest extends StatelessWidget {
  const EasyRest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouting.router,
    );
  }
}
