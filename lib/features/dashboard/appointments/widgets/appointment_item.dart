import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/features/dashboard/appointments/models/appointment_status_body.dart';
import 'package:pety/features/dashboard/appointments/models/appointments_response.dart';
import 'package:pety/features/dashboard/shared/cubit/dashboard_states.dart';
import 'package:pety/features/dashboard/shared/cubit/dashobard_cubit.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';
import 'package:pety/shared/widgets/text_button.dart';
import 'package:pety/shared/widgets/vertical_space.dart';

class AppointmentItem extends StatelessWidget {
  Data appointment;
  AppointmentItem({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      height: 120.h,
      decoration: BoxDecoration(
          color: ColorManager.lightGrey3,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(40), // Image radius
              child: Image.network(
                appointment.owner![0].photo!.url!,
                fit: BoxFit.cover
              ),
            ),
          ),
          const HorizontalSpace(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${appointment.owner![0].firstName!} ${appointment.owner![0].lastName!}",
                style: TextStyles.font12BlackMedium,
                overflow: TextOverflow.ellipsis,
              ),
              const VerticalSpace(height: 1),
              Text(
                appointment.date!,
                style: TextStyles.font12filtersGreyColorRegular,
              ),
              Text(
                appointment.time!,
                style: TextStyles.font12filtersGreyColorRegular,
              ),
            ],
          ),
          const Spacer(),
          BlocBuilder<DashboardCubit,DashboardStates>(
              builder: (context,state) {
                DashboardCubit cubit = context.read<DashboardCubit>();
                if(appointment.status!='Pending'){
                  return Text(
                    appointment.status!,
                    style: TextStyles.font12BlackRegular.copyWith(color: statusColor(appointment.status!)),
                  );
                }else if(state is ChangeAppointmentsStatusLoading){
                  return const SizedBox(width: 30,height: 30,child: CircularProgressIndicator(),);
                }else if(state is ChangeAppointmentsStatusSuccess){
                  return Text(
                    state.data.data.status,
                    style: TextStyles.font12BlackRegular.copyWith(color: statusColor(state.data.data.status))
                  );
                }
                else {
                  return Row(
                    children: [
                      defaultTextButton(
                          text: 'Approve',
                          color: Colors.green,
                          onClick: () {
                            context.read<DashboardCubit>().changeAppointmentStatus(
                                statusBody:AppointmentStatusBody(
                                  id: appointment.id,
                                  role: cubit.currentRole,
                                  status: 'approved'
                                )
                            );
                          }
                      ),
                      const HorizontalSpace(width: 5),
                      defaultTextButton(
                          text: 'Reject',
                          color: Colors.redAccent,
                          onClick: () {
                            context.read<DashboardCubit>().changeAppointmentStatus(
                                statusBody:AppointmentStatusBody(
                                    id: appointment.id,
                                    role: cubit.currentRole,
                                    status: 'rejected'
                                )
                            );
                          }
                      ),
                    ],
                  );
                }
              }
          )
        ],
      ),
    );
  }

  Color statusColor(String status){
    switch(status){
      case 'Approved': return Colors.green;
      case 'Rejected': return Colors.redAccent;
      default : return ColorManager.defaultColor;
    }
  }

}