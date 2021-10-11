import 'package:awfar/constants.dart';
import 'package:flutter/material.dart';

class TripsTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(bottom: -8,left: 0,right: 0,child: Divider(thickness: 7,color: Colors.grey.withOpacity(0.3),)),
        TabBar(
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 13),
          labelStyle: TextStyle(fontWeight: FontWeight.w900,fontSize: 14),
          unselectedLabelColor: kDimGrayColor,
          labelColor: kPrimaryColor,
          indicatorColor: kPrimaryColor,
          indicatorWeight: 3.5,
          tabs: ['الحالية','السابقة'].map((e) => Tab(text: e)).toList(),
        ),
      ],
    );
  }
}
