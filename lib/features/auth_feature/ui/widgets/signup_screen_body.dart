import "package:easy_rest/features/auth_feature/data/models/signup_models/signup_model.dart";
import "package:easy_rest/features/auth_feature/logic/cubits/signup_cubit/signup_cubit.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          BlocProvider.of<SignupCubit>(context).signup(
            signupModel: SignupModel.fromJson(
              {
                "username": "rameznasser",
                "email": "rameznasser@gmail.com",
                "password": "password",
                "password-confirmation": "password"
              },
            ),
          );
        },
        child: BlocBuilder<SignupCubit, SignupState>(
          builder: (context, state) {
            if (state is SignupLoading) {
              return const CircularProgressIndicator();
            } else if (state is SignupSuccess) {
              return Text("Success ${state.message}");
            } else if (state is SignupFailure) {
              print(state.errormessage);
              return Text("Error ${state.errormessage}");
            }
            return Text("Sign Up");
          },
        ),
      ),
    );
  }
}
