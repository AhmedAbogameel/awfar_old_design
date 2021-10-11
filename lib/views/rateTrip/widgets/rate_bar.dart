import 'package:awfar/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingTripBar extends StatelessWidget {
  final double rate;
  final Function(double) onRate;
  RatingTripBar({this.rate,this.onRate});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RatingBar(
        initialRating: rate,
        direction: Axis.horizontal,
        allowHalfRating: false,
        updateOnDrag: onRate != null,
        glowColor: kPrimaryColor,
        textDirection: TextDirection.ltr,
        itemCount: 5,
        itemSize: 30,
        ratingWidget: RatingWidget(
          full: _buildIcon(Icons.star_rounded),
          half: _buildIcon(Icons.star_half_rounded),
          empty: _buildIcon(Icons.star_border_rounded),
        ),
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        onRatingUpdate:  onRate,
      ),
    );
  }
  Widget _buildIcon(IconData icon)=> Icon(icon,color: kPrimaryColor,);
}
