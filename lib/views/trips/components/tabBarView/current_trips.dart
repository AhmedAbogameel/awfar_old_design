import 'package:awfar/views/trips/widgets/trip_card.dart';
import 'package:flutter/material.dart';

class TripsViewCurrentTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemBuilder: (context, index) => TripCard(),itemCount: 10,);
  }
}
