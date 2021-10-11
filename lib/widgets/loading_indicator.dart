import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            shape: BoxShape.circle,
            border: Border.all(color: kPrimaryColor)),
        // child: CupertinoActivityIndicator(),
        child: Spin(
            infinite: true,
            delay: Duration(milliseconds: 100),
            child: Icon(
          FontAwesomeIcons.pagelines,
          size: 30,
          color: Colors.white,
        )),
      ),
    );
  }
}
