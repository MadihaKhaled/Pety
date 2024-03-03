
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';
import 'package:pety/shared/widgets/vertical_space.dart';

class FeesAndLocation extends StatelessWidget{
  const FeesAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image(
              image: const AssetImage('images/location.png'),
              width: 32.w,
              height: 32.h,
            ),
            const HorizontalSpace(width: 5),
            Expanded(
              child: Text(
                'Mansoura, Ahmed Maher street',
                style: TextStyles.font12LightGreyRegular,
                maxLines: 3,
              ),
            ),
          ],
        ),
        const VerticalSpace(height: 10),
        Row(
          children: [
            Image(
              image: const AssetImage('images/calender.png'),
              width: 32.w,
              height: 32.h,
            ),
            const HorizontalSpace(width: 5),
            Expanded(
              child: Text(
                '01:00 PM\nFriday 28 February 2024',
                style: TextStyles.font12LightGreyRegular,
                maxLines: 3,
              ),
            ),
          ],
        ),
      ],
    );
  }

}