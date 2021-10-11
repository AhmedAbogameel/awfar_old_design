import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:awfar/core/router/router.dart';
import 'package:awfar/views/welcome/view.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    getAppSettings();
    super.initState();
  }

  void getAppSettings()async{
    // await AppController.getCountries();
    // await AppController.getMainCategories();
    Timer(Duration(seconds: 2),()=> MagicRouter.navigateAndPopAll(WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: sizeFromHeight(1,removeAppBarSize: false),
        color: kPrimaryColor,
        child: ZoomIn(
          duration: Duration(seconds: 2),
          child: Center(
            child: Image.asset(getAsset('whiteLogo')),
          ),
        ),
      ),
    );
  }
}
