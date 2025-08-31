import 'package:flutter/material.dart';
import '../widgets/common.dart';
import 'package:flutter_online_appointment_booking_app/src/i18n.dart';
import '../src/app_state.dart';

class AppointmentDetailPage extends StatelessWidget {
  static const route = '/appointment-detail';
  const AppointmentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final app = InheritedState.of(context);
    final t = app.t;

    final Appointment appointment =
    ModalRoute.of(context)!.settings.arguments as Appointment;

    return PageScaffold(
      title: t('appointmentDetails'),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(appointment.doctor),
            Text(appointment.specialty ),
            const SizedBox(height: 12),
            Text('${t('treatment')}: ${appointment.treatment}'),
            Text('${t('date')}: ${appointment.date.toLocal()}'),
            Text('${t('fees')}: ₹${appointment.fees}'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                   Navigator.pop(context);
                },
                child: Text(t('bookNow')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
