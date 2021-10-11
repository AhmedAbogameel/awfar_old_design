import 'package:awfar/core/router/router.dart';
import 'package:awfar/views/login/view.dart';
import 'package:awfar/widgets/confirm_button.dart';
import 'package:flutter/material.dart';

class WelcomeViewLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConfirmButton(
      horizontalMargin: 20,
      title: 'تسجيل الدخول',
      onPressed: ()=> MagicRouter.navigateTo(LoginView()),
    );
  }
}
