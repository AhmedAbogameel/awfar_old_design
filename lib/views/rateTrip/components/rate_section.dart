import 'package:awfar/views/rateTrip/widgets/rate_bar.dart';
import 'package:awfar/widgets/text_form_field.dart';
import 'package:flutter/cupertino.dart';

class RateTripRateSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RatingTripBar(rate: 1),
        InputFormField(
          horizontalMargin: 20,
          hint: 'رسالة',
          multiLine: true,
          maxLines: 7,
        ),
      ],
    );
  }
}
