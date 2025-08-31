import 'package:flutter/material.dart';
import '../widgets/common.dart';
import 'package:flutter_online_appointment_booking_app/src/i18n.dart';
import '../src/app_state.dart';

class FeedbackPage extends StatefulWidget {
  static const route = '/feedback';
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _titleController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final app = InheritedState.of(context);
    final t = app.t;

    return PageScaffold(
      title: t('feedbackForm'),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: t('title'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            vSpace(16),
            TextField(
              controller: _messageController,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: t('message'),
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            vSpace(24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  final title = _titleController.text.trim();
                  final message = _messageController.text.trim();

                  if (title.isEmpty || message.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(t('pleaseFillAllFields'))),
                    );
                    return;
                  }

                  // You can connect this with your app logic


                  Navigator.pop(context);
                },
                child: Text(t('submit')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
