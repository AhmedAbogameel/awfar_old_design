import 'package:awfar/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class EditPasswordFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InputFormField(
            secure: true,
            hint: 'كلمة المرور الجديدة',
          ),
          InputFormField(
            hint: 'تاكيد كلمة المرور الجديدة',
            secure: true,
            isNext: false,
          ),
        ],
      ),
    );
  }
}
