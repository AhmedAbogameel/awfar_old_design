import 'package:awfar/views/rateTrip/components/confirm_button.dart';
import 'package:awfar/views/rateTrip/components/info_section.dart';
import 'package:awfar/views/rateTrip/components/rate_section.dart';
import 'package:awfar/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class RateTripView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(''),
      body: ListView(
        children: [
          RateTripInfoSection(),
          RateTripRateSection(),
          RateTripConfirmButton(),
        ],
      ),
    );
  }
}