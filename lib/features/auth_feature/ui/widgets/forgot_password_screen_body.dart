import 'package:easy_rest/core/utils/consts.dart';
import 'package:easy_rest/core/utils/size_config.dart';
import 'package:easy_rest/features/auth_feature/logic/cubits/forget_password_ploc/forget_password_bloc.dart';
import 'package:easy_rest/features/auth_feature/ui/widgets/custom_forget_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordScreenBody extends StatelessWidget {
  const ForgotPasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121223),
      body: BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
        builder: (context, state) {
          return Center(
            child: CustomForgetButton(
              text: 'Send',
              width: SizeConfig.defaultSize! * 30,
              height: SizeConfig.defaultSize! * 6,
              color: Consts.kPrimaryColor,
              onTap: () => BlocProvider.of<ForgetPasswordBloc>(context).add(
                ForgetPasswordEventEvent(
                  email: 'rameznasser55@gmail.com',
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
