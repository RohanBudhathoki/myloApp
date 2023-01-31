import 'package:flutter/material.dart';

import '../../common/config/enum.dart';
import 'authmodel.dart';
import 'baseModel.dart';

class AuthStateModel extends BaseModel {
  switchAuthenticationState(AuthModel authModel) {
    authModel.authState == AuthState.signIn
        ? authModel.setAuthState(AuthState.signUp)
        : authModel.setAuthState(AuthState.signIn);
  }

  switchAuthenticationMethod(
      AuthModel authModel,
      TextEditingController emailController,
      TextEditingController passwordController) {
    authModel.authState == AuthState.signIn
        ? authModel.signIn(emailController.text, passwordController.text)
        : authModel.createNewUser(
            emailController.text, passwordController.text);
  }

  switchAuthenticationText(AuthModel authModel) {
    return authModel.authState == AuthState.signIn ? "Sign In" : "Sign Up";
  }

  switchAuthenticationOption(AuthModel authModel) {
    return authModel.authState == AuthState.signIn
        ? "Create account ??"
        : "Already registered ??";
  }
}
