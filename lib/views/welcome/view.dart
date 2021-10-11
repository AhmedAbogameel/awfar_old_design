import 'package:awfar/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'components/login_button.dart';
import 'components/sign_up_button.dart';
import 'components/upper_section.dart';
import 'components/welcome_text.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WelcomeViewUpperSection(),
          Logo(),
          WelcomeViewWelcomeText(),
          WelcomeViewLoginButton(),
          WelcomeViewSignUpButton(),
        ],
      ),
    );
  }
}