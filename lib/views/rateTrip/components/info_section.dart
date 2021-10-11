import 'package:awfar/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RateTripInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('التكلفة',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900),),
        SizedBox(height: 15),
        Text('32 \$',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 35),),
        Divider(thickness: 5,height: 30,),
        CircleAvatar(
          backgroundColor: kAccentColor,
          radius: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(radius: 100,backgroundImage: NetworkImage('https://wallpaperaccess.com/full/2213424.jpg'),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text('تقييم الرحلة',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
        ),
      ],
    );
  }
}
