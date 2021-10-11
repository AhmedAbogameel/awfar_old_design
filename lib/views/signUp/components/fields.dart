import 'package:awfar/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InputFormField(
            hint: 'رقم الجوال',
            maxLength: 10,
            isNumber: true,
          ),
          InputFormField(
            hint: 'اسم المستخدم',
          ),
          InputFormField(
            hint: 'كلمة المرور',
            secure: true,
          ),
          InputFormField(
            hint: 'تأكيد كلمة المرور',
            secure: true,
            isNext: false,
          ),
        ],
      ),
    );
  }
}
