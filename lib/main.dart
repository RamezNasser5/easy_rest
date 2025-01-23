import 'package:easy_rest/features/auth_feature/logic/cubits/cubit/sign_in_cubit.dart';
import 'package:easy_rest/features/splach_feature/views/screens/splach_screen.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachScreen(),
    );
  }
}

// class EasyRest extends StatelessWidget {
//   const EasyRest({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 BlocProvider.of<SignInCubit>(context).signIn(
//                   signInModel: SignInModel(
//                     email: 'ramez5@gmail.com',
//                     password: '1234567',
//                   ),
//                 );
//               },
//               child: const Text('Sign In'),
//             ),
//             Center(
//               child: BlocBuilder<SignInCubit, SignInState>(
//                 builder: (context, state) {
//                   if (state is SignInLoading) {
//                     return const CircularProgressIndicator();
//                   } else if (state is SignInSuccess) {
//                     return Text(state.token);
//                   } else if (state is SignInFailure) {
//                     debugPrint(state.errorMessage);
//                     return Text(state.errorMessage);
//                   }
//                   return Text('hello world!');
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
