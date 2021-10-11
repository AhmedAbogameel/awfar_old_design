import 'package:awfar/views/trips/components/tabBarView/current_trips.dart';
import 'package:awfar/views/trips/components/tabBarView/previous_trips.dart';
import 'package:flutter/material.dart';

class TripsTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          TripsViewCurrentTrips(),
          TripsViewPreviousTrips(),
        ],
      ),
    );
  }
}