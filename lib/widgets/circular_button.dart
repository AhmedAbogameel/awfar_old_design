import 'package:awfar/constants.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData iconData;
  final Function onTap;

  CircularButton({this.iconData, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Icon(iconData,color: kDimGrayColor,size: 20,),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]
        ),
      ),
      onTap: onTap,
    );
  }
}
