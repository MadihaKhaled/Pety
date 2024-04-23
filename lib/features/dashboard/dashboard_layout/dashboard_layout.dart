import 'package:flutter/material.dart';
import 'package:pety/features/dashboard/appointments/appointments_screen.dart';
import 'package:pety/features/dashboard/work_hours/work_hours_screen.dart';


class DashboardLayout extends StatefulWidget {
  String role;
  DashboardLayout({super.key,required this.role});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout>
    with TickerProviderStateMixin {

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final String role = (ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>)['petRole'] ;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Dashboard')),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Text('Appointments'),
            Text('Work Hours'),
          ],
          onTap: (index) {
            //context.read<DashboardCubit>().getPetyRoles();
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
            AppointmentsScreen(role: widget.role,),
            WorkHoursScreen(role: widget.role,),
        ]
     )
    );
  }
}

