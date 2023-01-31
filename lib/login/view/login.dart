import 'package:flutter/material.dart';
import 'package:myloapp/login/widgets/common_authbutton.dart';
import 'package:myloapp/login/widgets/common_textfield.dart';
import '../../common/config/appstring.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 280,
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(),
              child: Column(
                children: [
                  CommonTextField(
                    onTap: () {},
                    controller: emailController,
                    hintText: AppString.emailHint,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CommonTextField(
                    onTap: () {},
                    controller: passwordController,
                    hintText: AppString.passwordHint,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CommonAuthButton(onPressed: () {}, text: AppString.login),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppString.havingProblem,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
