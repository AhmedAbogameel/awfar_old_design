import 'package:flutter/material.dart';

class WelcomeViewWelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text('مرحبا بك في تطبيق أوفر',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),textAlign: TextAlign.center,),
    );
  }
}
