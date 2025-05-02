import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({
    super.key,
    required this.rating,
    required this.itemSize,
    required this.unratedColor,
    required this.itemBuilder,
  });

  final double rating;
  final double itemSize;
  final Color unratedColor;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: itemSize,
      unratedColor: unratedColor,
      itemBuilder: itemBuilder,
    );
  }
}

