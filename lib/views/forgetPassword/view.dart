import 'package:awfar/widgets/confirm_button.dart';
import 'package:awfar/widgets/logo.dart';
import 'package:awfar/widgets/text_form_field.dart';
import 'package:awfar/widgets/title_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Logo(withShape: true),
          TitleText('نسيت كلمة المرور'),
          InputFormField(
            hint: 'رقم الجوال',
            horizontalMargin: 20,
            maxLength: 10,
            isNext: false,
            isNumber: true,
          ),
          ConfirmButton(
            title: 'استعادة',
            horizontalMargin: 20,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
