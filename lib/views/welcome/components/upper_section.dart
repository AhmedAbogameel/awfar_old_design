import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class WelcomeViewUpperSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: SlideInDown(
          duration: Duration(seconds: 1),
          child: Image.asset(getAsset('redCar'),height: sizeFromHeight(3),)),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(getAsset('orangeShape')),fit: BoxFit.fill)
      ),
    );
  }
}
