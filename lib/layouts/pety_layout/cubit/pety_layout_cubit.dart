
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pety/features/community/community_Screen.dart';
import 'package:pety/features/home/home_Screen.dart';
import 'package:pety/features/pet_bot/pet_bot_screen.dart';
import 'package:pety/layouts/pety_layout/cubit/pety_layout_states.dart';
import 'package:pety/shared/widgets/button_image.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';

class PetLayoutCubit extends Cubit<PetLayoutStates>{

  PetLayoutCubit() : super(PetLayoutInitialState());

  static PetLayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const CommunityScreen(),
    const PetBotScreen()
  ];

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svgs/tst.svg',color: ColorManager.defaultColor,),
      label: 'Home'
    ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/svgs/menu.svg'),
        label: 'Community'
    ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/svgs/menu.svg'),
        label: 'PetBot'
    ),
  ];

  List<AppBar> titles = [
    AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorManager.homeBackground,
      title: Row(
        children: [
          SvgPicture.asset('assets/svgs/menu.svg',width: 25.w,height: 25.h),
          SizedBox(width: 20.w,),
          Text('Pety',style: TextStyles.font16BlackRegular,)
        ],
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: SvgPicture.asset('assets/svgs/menu.svg')
        )
      ],
    ),
    AppBar(),
    AppBar(),
  ];

  List<JobListItem> jobsList = [
    JobListItem(title: 'Veterinarian', image:'assets/images/pet_vet.png'),
    JobListItem(title: 'Pet sitter', image:'assets/images/pet_sitter.png'),
    JobListItem(title: 'Pet groomer', image:'assets/images/pet_groomer.png'),
    JobListItem(title: 'Pet taxi', image:'assets/images/pet_taxi.png'),
  ];


  void changeBottomNavIndex(int index){
    currentIndex = index;
    emit(PetLayoutChangeBottomNavIndexState());
  }

}


class JobListItem{
  final String title;
  final String image;
  JobListItem({
    required this.title,
    required this.image
  });

}