import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';
import '../widgets/common.dart';
 import 'home.dart';

import '../widgets/common.dart';
import 'package:flutter_online_appointment_booking_app/src/i18n.dart';
import '../src/app_state.dart';
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final mobileCtrl = TextEditingController();
  final otpCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final app = InheritedState.of(context);
    final t = app.t;
    return AppScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.language, color: Colors.white),
                  onPressed: app.toggleLang,
                  tooltip: t('changeLang'),
                ),
              ),
              const Spacer(),
              Text(t('welcomeTitle'), style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold)),
              vSpace(8),
              Text(t('slogan'), style: Theme.of(context).textTheme.bodyLarge),
              vSpace(24),
              TextField(controller: mobileCtrl, keyboardType: TextInputType.phone, decoration: InputDecoration(labelText: t('mobile'), hintText: '9xxxxxxxxx')),
              vSpace(12),
               // ElevatedButton(
              //   onPressed: () {
              //
              //     InheritedState.of(context).sendOTP(mobileCtrl.text);
              //    },
              //   child: Text(t('Send OTP')),
              // ),
              ElevatedButton(
                onPressed: () {
                  InheritedState.of(context).login(mobileCtrl.text, otpCtrl.text);
                  Navigator.pushReplacementNamed(context, HomePage.route);
                },
                child: Text(t('login')),
              ),

              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
