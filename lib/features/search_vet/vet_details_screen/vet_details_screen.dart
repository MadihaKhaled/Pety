
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/default_rating_indicator.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';
import 'package:pety/shared/widgets/vertical_space.dart';

class VetDetailsScreen extends StatelessWidget{
  const VetDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 100.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://qph.cf2.quoracdn.net/main-qimg-1a76949b7ad38ed534243bb32f6c4ea8-lq',
                        height: 100.h,
                        width: 80.w,
                        fit: BoxFit.cover,
                        //image: const NetworkImage(),
                      ),
                    ),
                    const HorizontalSpace(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Reiner',
                              style: TextStyles.font16BlackBold,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            children: [
                              const DefaultRatingIndicator(rate: 25,),
                              const HorizontalSpace(width: 3),
                              Text('{item.averageRate!}',style: TextStyles.font12LightGreyRegular),
                            ],
                          ),
                          Text(
                            'Cat, Dog',//item.animals==null?'':item.animals!.toString(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyles.font12LightGreyRegular,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpace(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: const AssetImage('images/dollar.png'),
                          width: 32.w,
                          height: 32.h,
                        ),
                        const HorizontalSpace(width: 5),
                        Text(
                          '300 EGP',
                          style: TextStyles.font12LightGreyRegular,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                ],
              ),
              const VerticalSpace(height: 30),
              Text(
                'Choose your appointment',
                style: TextStyles.font12BlackSemiBold,
              ),
              const VerticalSpace(height: 10),
              SizedBox(
                height: 70.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 40.w,
                      child: Card(
                        color: ColorManager.defaultColor,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: (){},
                          borderRadius: BorderRadius.circular(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Fri',style: TextStyles.font10WhiteRegular.copyWith(height: 1),),
                              Text('28',style: TextStyles.font13WhiteBold.copyWith(height: 1),),
                            ],
                          ),
                        )
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const HorizontalSpace(width: 5),
                  itemCount: 10,
                ),
              ),
              const VerticalSpace(height: 30),
              SizedBox(
                height: 100.h,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 90.w,
                    mainAxisExtent: 30.h,
                    crossAxisSpacing: 8.w,
                    mainAxisSpacing: 8.h,
                  ),
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 90.w,
                      height: 30.h,
                      child: OutlinedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            )
                          ),
                          side: MaterialStateProperty.all(const BorderSide(color: Colors.black))
        
                        ),
                        child: Text(
                          '07:00 AM',
                          style: TextStyles.font12BlackMedium,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const VerticalSpace(height: 30),
              Text(
                'About vet',
                style: TextStyles.font12BlackSemiBold,
              ),
              Text(
                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly bel middle of text.',
                style: TextStyles.font12DefaultRegular,
              ),
              const VerticalSpace(height: 30),
              Text(
                'Reviews',
                style: TextStyles.font12BlackSemiBold,
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index) {
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
                },
                separatorBuilder: (context,index) => const Divider(thickness: 1,color: ColorManager.dashLineColor,),
                itemCount: 10
              ),
              const VerticalSpace(height: 10),
            ],
          ),
        ),
      ),
    );
  }

}