
import 'package:flutter/material.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/default_rating_indicator.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';
import 'package:pety/shared/widgets/vertical_space.dart';

class ReviewItem extends StatelessWidget{
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DefaultRatingIndicator(rate: 3.2),
        const VerticalSpace(height: 5),
        Text('Very good service',style: TextStyles.font10BlackRegular,),
        const VerticalSpace(height: 5),
        Row(
          children: [
            Text('Ahmed',style: TextStyles.font8BlackBold,),
            const HorizontalSpace(width: 10),
            Text('29/2/2024',style: TextStyles.font8BlackRegular,),
          ],
        ),
      ],
    );
  }

}