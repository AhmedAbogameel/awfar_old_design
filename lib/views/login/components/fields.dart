import 'package:awfar/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class LoginFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InputFormField(
            hint: 'رقم الجوال',
            isNumber: true,
            maxLength: 10,
          ),
          InputFormField(
            hint: 'كلمة المرور',
            isNext: false,
            secure: true,
          ),
        ],
      ),
    );
  }
}
