import 'package:awfar/widgets/text_form_field.dart';
import 'package:flutter/cupertino.dart';

class ProfileFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputFormField(
          upperText: 'رقم الجوال',
          isNumber: true,
          maxLength: 10,
        ),
        InputFormField(
          upperText: 'اسم المستخدم',
          isNext: false,
        ),
      ],
    );
  }
}
