import 'package:awfar/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TripCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(FontAwesomeIcons.car,color: kPrimaryColor,),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(text: TextSpan(
                    text: 'من : ',
                    style: TextStyle(color: Colors.green,fontWeight: FontWeight.w900),
                    children: [
                      TextSpan(
                        text: 'ش العاجز المتفرع من شارع الاول',
                        style: TextStyle(color: kDimGrayColor,fontWeight: FontWeight.w900,fontSize: 13),
                      )
                    ]
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: RichText(text: TextSpan(
                      text: 'الي : ',
                      style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900),
                      children: [
                        TextSpan(
                          text: 'ش العاجز المتفرع من شارع الاول',
                          style: TextStyle(color: kDimGrayColor.withOpacity(0.7),fontWeight: FontWeight.w900,fontSize: 13),
                        )
                      ]
                  )),
                ),
                Align(alignment: Alignment.bottomLeft,child: Text('March 21, 2020 at 10:30 a.m',style: TextStyle(color: Colors.grey.shade500,fontSize: 11),)),
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ]
      ),
    );
  }
}
