import 'package:awfar/core/router/router.dart';
import 'package:awfar/views/signUp/view.dart';
import 'package:flutter/material.dart';

class WelcomeViewSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text('انشاء حساب جديد',style: TextStyle(fontWeight: FontWeight.bold),),
      onPressed: ()=> MagicRouter.navigateTo(SignUpView()),
    );
  }
}
