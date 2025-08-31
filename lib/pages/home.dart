import 'package:flutter/material.dart';
import '../widgets/common.dart';
import 'package:flutter_online_appointment_booking_app/src/i18n.dart';
import '../src/app_state.dart';
import '../widgets/common.dart';
import 'appointment_list.dart';
import 'report_card_form.dart';
import 'feedback.dart';

class HomePage extends StatelessWidget {
  static const route = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final app = InheritedState.of(context);
    final t = app.t;
    final name = app.user?.name ?? 'Mr XYZ';
    return PageScaffold(
      title: t('home'),
      child: ListView(
        children: [
          Text('Hello, $name', style: Theme.of(context).textTheme.titleLarge),
          vSpace(8),
          _HomeTile(
            title: t('webinarsAttended'),
            subtitle: app.lastAttended == null ? '—' : '${app.lastAttended}',
            icon: Icons.event_available,
          ),
          _HomeButton(
            title: t('registerForWebinar'),
            icon: Icons.video_call,
            onTap: () => Navigator.pushNamed(context, AppointmentListPage.route),
          ),
          _HomeButton(
            title: t('reportCard'),
            icon: Icons.assignment,
            onTap: () => Navigator.pushNamed(context, ReportCardFormPage.route),
          ),
          _HomeButton(
            title: t('feedbackForm'),
            icon: Icons.rate_review,
            onTap: () => Navigator.pushNamed(context, FeedbackPage.route),
          ),
        ],
      ),
    );
  }
}

class _HomeTile extends StatelessWidget {
  final String title, subtitle;
  final IconData icon;
  const _HomeTile({required this.title, required this.subtitle, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(leading: Icon(icon, color: Colors.white), title: Text(title), subtitle: Text(subtitle)),
    );
  }
}

class _HomeButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const _HomeButton({required this.title, required this.icon, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
