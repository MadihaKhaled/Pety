
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';

class DefaultRatingIndicator extends StatelessWidget{
  final double rate;
  const DefaultRatingIndicator({
    super.key,
    required this.rate
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rate,
      itemBuilder: (context,index) => const Icon(
        Icons.star,
        color: ColorManager.yellow,
      ),
      unratedColor: ColorManager.lightGrey2,
      itemCount: 5,
      itemSize: 25.r,
    );
  }

}