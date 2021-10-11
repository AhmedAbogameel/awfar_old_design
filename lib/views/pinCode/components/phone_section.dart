import 'package:flutter/material.dart';

import '../../../constants.dart';

class PinCodePhoneSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('اكتب على الكود المرسل على رساله للجوال',),
        SizedBox(height: 10),
        Text('96651234567',style: TextStyle(color: kDimGrayColor,fontWeight: FontWeight.bold,fontSize: 18),),
      ],
    );
  }
}
