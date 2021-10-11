import 'package:awfar/constants.dart';
import 'package:awfar/core/router/router.dart';
import 'package:awfar/views/forgetPassword/view.dart';
import 'package:awfar/views/login/components/confirm_button.dart';
import 'package:awfar/views/login/components/fields.dart';
import 'package:awfar/widgets/confirm_button.dart';
import 'package:awfar/widgets/logo.dart';
import 'package:awfar/widgets/text_form_field.dart';
import 'package:awfar/widgets/title_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Logo(withShape: true),
          TitleText('تسجيل الدخول'),
          LoginFields(),
          LoginConfirmButton(),
          TextButton(onPressed: ()=> MagicRouter.navigateTo(ForgetPasswordView()), child: Text('نسيت كلمة المرور')),
        ],
      ),
    );
  }
}
