import 'package:flutter/material.dart';

import '../constants.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: sizeFromHeight(20)),
      child: Text(title,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 23),),
    );
  }
}
