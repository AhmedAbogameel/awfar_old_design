import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class NoContent extends StatelessWidget {
  final String title;
  final IconData icon;
  final String subtitle;
  final Function onSubtitlePressed;
  NoContent({this.title,this.icon = FontAwesomeIcons.storeSlash, this.subtitle, this.onSubtitlePressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: sizeFromHeight(5)),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(getAsset('logo'),height: sizeFromHeight(5),),
          SizedBox(height: 20,),
          Text(title ?? "لا يوجد محتوي",textAlign: TextAlign.center,style: TextStyle(
            // color: kAccentColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          if(subtitle != null && onSubtitlePressed != null)
            TextButton(onPressed: onSubtitlePressed, child: Text(subtitle,style: TextStyle(color: kPrimaryColor),)),
        ],
      ),
    );
  }
}