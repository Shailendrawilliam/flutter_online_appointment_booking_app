import 'package:flutter_online_appointment_booking_app/src/i18n.dart';
import 'package:flutter_online_appointment_booking_app/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  const PageScaffold({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final app = InheritedState.of(context);
    return AppScaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          PopupMenuButton<String>(
            tooltip: app.t('changeLang'),
            onSelected: (_) => app.toggleLang(),
            itemBuilder: (c) => [
              PopupMenuItem(value: 'toggle', child: Text('${app.t('changeLang')} (${app.lang == AppLang.en ? 'EN' : 'HI'})')),
            ],
          ),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(16), child: child),
    );
  }
}

Widget vSpace(double h) => SizedBox(height: h);
