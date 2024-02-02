
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';

class BeAVetCard extends StatelessWidget{
  const BeAVetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.defaultColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      elevation: 0,
      child: Container(
        padding: EdgeInsets.only(
          left: 8.w,
          top: 8.w,
        ),
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Become a Pety,\nPet Sitter or\nGroomer',style: TextStyles.font26WhiteMedium,),
                Text(
                    'earn extra income by\nsharing your love and\ncare for pets',
                    style: TextStyles.font13WhiteRegular
                ),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 30.h,
                  child: FilledButton.tonal(
                    onPressed: (){},
                    style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 5.w)),
                      backgroundColor: const MaterialStatePropertyAll<Color>(ColorManager.orange),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r))),
                    ),
                    child: Text('Learn more',style: TextStyles.font10WhiteRegular,),
                  ),
                ),
                SizedBox(height: 10.h,)
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image(
                image: const AssetImage(
                    'assets/images/girl_dog.png'
                ),
                height: 140.h,
                width: 100.w,
              ),
            )
          ],
        ),
      ),
    );
  }

}