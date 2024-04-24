import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/features/dashboard/appointments/widgets/appointment_item.dart';
import 'package:pety/features/dashboard/shared/cubit/dashboard_states.dart';
import 'package:pety/features/dashboard/shared/cubit/dashobard_cubit.dart';
import 'package:pety/shared/widgets/vertical_space.dart';

class AppointmentsScreen extends StatelessWidget {

  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardStates>(
      builder: (context, state) {
        if(state is AppointmentsLoading){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }else if(state is AppointmentsError){
          return Center(
              child: Text(state.error)
          );
        }else if(state is AppointmentsSuccess && state.data.data.length==0){
          return const Center(
              child: Text('You have no appointments')
          );
        }else {
          DashboardCubit cubit = context.read<DashboardCubit>();
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            child: Column(
              children: [
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => AppointmentItem(appointment:cubit.appointmentsResponse!.data![index]),
                        separatorBuilder: (context, index) => const VerticalSpace(height: 10),
                        itemCount: cubit.appointmentsResponse!.results!
                    )
                ),
              ],
            ),
          );
        }
      },
    );
  }

}