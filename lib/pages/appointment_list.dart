import 'package:flutter_online_appointment_booking_app/pages/appointment_details.dart';
import 'package:flutter/material.dart';
import '../widgets/common.dart';
import 'package:flutter_online_appointment_booking_app/src/i18n.dart';
import '../src/app_state.dart';

class AppointmentListPage extends StatelessWidget {
  static const route = '/appointments';
  const AppointmentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final app = InheritedState.of(context);
    final t = app.t;

    return PageScaffold(
      title: t('availableAppointments'),
      child: ListView.builder(
        itemCount: app.appointments.length,
        itemBuilder: (_, i) {
          final a = app.appointments[i];
          return Card(
            child: ListTile(
              title: Text('${a.doctor} • ${a.specialty}'),
              subtitle: Text(
                '${a.treatment}\n${a.date.toLocal()} • ₹${a.fees} ${t('feesInclGst')}',
              ),
              isThreeLine: true,
              onTap: () => Navigator.pushNamed(
                context,
                AppointmentDetailPage.route,
                arguments: a,
              ),
            ),
          );
        },
      ),
    );
  }
}
