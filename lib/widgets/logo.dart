import 'package:animate_do/animate_do.dart';
import 'package:awfar/core/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Logo extends StatelessWidget {
  final double heightFraction;
  final bool withShape;
  final bool backButton;
  Logo({this.heightFraction = 3, this.withShape = false, this.backButton = true});

  @override
  Widget build(BuildContext context) {
    return withShape ? _logoWithShape() : _logo();
  }

  Widget _logo()=> Center(
    child: SizedBox(
        height: sizeFromHeight(heightFraction),
        child: Image.asset(getAsset('coloredLogo'))),
  );


  Widget _logoWithShape()=> Stack(
    children: [
      Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: FadeInDownBig(
            duration: Duration(seconds: 1),
            child: Image.asset(getAsset('whiteLogo'),height: sizeFromHeight(3),)),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(getAsset('orangeShape')),fit: BoxFit.fill)
        ),
      ),
      if(backButton)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: MagicRouter.pop),
        ),
    ],
  );
}
