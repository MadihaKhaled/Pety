
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/features/home/widgets/be_a_vet_card.dart';
import 'package:pety/features/home/widgets/jobs_list.dart';
import 'package:pety/features/home/widgets/know_about_community.dart';
import 'package:pety/layouts/pety_layout/cubit/pety_layout_cubit.dart';
import 'package:pety/layouts/pety_layout/cubit/pet_layout_states.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/routing/routes.dart';
import 'package:pety/shared/widgets/default_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocConsumer<PetLayoutCubit,PetLayoutStates>(
      listener: (BuildContext context, PetLayoutStates state) {  },
      builder: (BuildContext context, PetLayoutStates state) {

        PetLayoutCubit cubit = PetLayoutCubit.get(context);

        return SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:10.w,vertical: 10.h),
              child: Column(
                children: [
                  JobsList(cubit: cubit),
                  SizedBox(height: 30.h,),
                  const KnowAboutCommunity(),
                  SizedBox(height: 30.h,),
                  const BeAVetCard(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


}