import 'package:awfar/core/router/router.dart';
import 'package:awfar/widgets/circular_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

appBar(String title,{Color backgroundColor = Colors.transparent})=> PreferredSize(
  preferredSize: Size.fromHeight(AppBar().preferredSize.height + 30),
  child: Material(
    color: backgroundColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (context) => CircularButton(
            iconData: FontAwesomeIcons.bars,
            onTap: Scaffold.of(context).openDrawer,
          ),
        ),
        Text(title ?? '',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17),),
        CircularButton(
          iconData: Icons.arrow_forward_ios,
          onTap: MagicRouter.pop,
        ),
      ],
    ),
  ),
);