import 'package:awfar/views/trips/components/tabBarView/tab_bar.dart';
import 'package:awfar/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'components/tabBarView/tab_bar_view.dart';

class TripsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar('الرحلات'),
        body: Column(
          children: [
            TripsTabBar(),
            TripsTabBarView(),
          ],
        ),
      ),
    );
  }
}
