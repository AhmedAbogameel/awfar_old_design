import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../constants.dart';

class DrawerProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeFromHeight(4),
      width: double.infinity,
      color: kPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(FontAwesomeIcons.user,size: 40,color: kDimGrayColor,),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: Text('Ahmed Abogameel',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 17),)),
        ],
      ),
    );
  }
}
