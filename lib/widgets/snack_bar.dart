import 'dart:async';
import 'package:awfar/core/router/router.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

showSnackBar(String message,{bool popPage = false,duration = 5,bool secondaryColor = false}) {
  ScaffoldMessenger.of(MagicRouter.currentContext).hideCurrentSnackBar();
  ScaffoldMessenger.of(MagicRouter.currentContext).showSnackBar(
    SnackBar(
      backgroundColor: secondaryColor ? kAccentColor : kPrimaryColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
      ),
      content: Text(message,style: TextStyle(color: Colors.white),),
      action: SnackBarAction(
        label: '',
        onPressed: () {},
      ),
      duration: Duration(seconds: duration),
    ),
  );
  if(popPage)
    Timer(Duration(seconds: 5),()=> MagicRouter.pop());
}