 import 'package:flutter_online_appointment_booking_app/pages/feedback.dart';
import 'package:flutter_online_appointment_booking_app/pages/home.dart';
import 'package:flutter_online_appointment_booking_app/pages/login.dart';
 import 'package:flutter_online_appointment_booking_app/pages/report_card_form.dart';
import 'package:flutter_online_appointment_booking_app/pages/appointment_details.dart';
import 'package:flutter_online_appointment_booking_app/pages/appointment_list.dart';
import 'package:flutter/material.dart';
import 'src/app_state.dart';
import 'src/theme.dart';
import 'src/i18n.dart';

import '../widgets/common.dart';
import 'package:flutter_online_appointment_booking_app/src/i18n.dart';
import '../src/app_state.dart';
void main() {
  runApp(const OnlineConsultationApp());
}

class OnlineConsultationApp extends StatefulWidget {
  const OnlineConsultationApp({super.key});
  @override
  State<OnlineConsultationApp> createState() => _OnlineConsultationAppState();
}

class _OnlineConsultationAppState extends State<OnlineConsultationApp> {
  final appState = AppState();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: appState,
      builder: (_, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Appointment App',
          theme: buildDarkBlueTheme(),
          // simple, app-level localization without intl package
          //locale: Locale(appState.la
          // ng.code),
          locale: Locale(appState.lang.code),

          home: InheritedState(
            appState: appState,
            child: LoginPage(), // splash + login combined
          ),
          routes: {
             HomePage.route: (_) => InheritedState(appState: appState, child: const HomePage()),
             FeedbackPage.route: (_) => InheritedState(appState: appState, child: const FeedbackPage()),
            ReportCardFormPage.route: (_) => InheritedState(appState: appState, child: const ReportCardFormPage()),
          },

        );
      },
    );
  }
}
