
import 'package:flutter/material.dart';
import 'package:pety/features/search_vet/vet_details_screen/widgets/review_item.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';

class ReviewsList extends StatelessWidget{
  const ReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Reviews',
          style: TextStyles.font12BlackSemiBold,
        ),
        ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context,index) {
              return const ReviewItem();
            },
            separatorBuilder: (context,index) => const Divider(thickness: 1,color: ColorManager.dashLineColor,),
            itemCount: 10
        ),
      ],
    );
  }

}