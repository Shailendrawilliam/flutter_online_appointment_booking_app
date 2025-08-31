import 'package:flutter/material.dart';
import '../widgets/common.dart';
import 'package:flutter_online_appointment_booking_app/src/i18n.dart';
import '../src/app_state.dart';

class ReportCardFormPage extends StatefulWidget {
  static const route = '/report-card';
  const ReportCardFormPage({super.key});

  @override
  State<ReportCardFormPage> createState() => _ReportCardFormPageState();
}

class _ReportCardFormPageState extends State<ReportCardFormPage> {
  final _f = GlobalKey<FormState>();

  final patientName = TextEditingController();
  final age = TextEditingController();
  final diagnosis = TextEditingController();
  final prescription = TextEditingController();
  final notes = TextEditingController();
  final recoveryProgress = TextEditingController(text: '0'); // percentage
  final nextAppointment = TextEditingController();

  bool requiresFollowUp = false;

  @override
  Widget build(BuildContext context) {
    final app = InheritedState.of(context);
    final t = app.t;

    return PageScaffold(
      title: t('patientReportCard'),
      child: Form(
        key: _f,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _txt(t('patientName'), patientName),
            _num(t('age'), age),
            _txt(t('diagnosis'), diagnosis, maxLines: 3),
            _txt(t('prescription'), prescription, maxLines: 3),
            _txt(t('doctorNotes'), notes, maxLines: 4),
            _num(t('recoveryProgressPercent'), recoveryProgress),
            SwitchListTile(
              value: requiresFollowUp,
              onChanged: (v) => setState(() => requiresFollowUp = v),
              title: Text(t('requiresFollowUp')),
            ),
            if (requiresFollowUp)
              _txt(t('nextAppointmentDate'), nextAppointment, hint: "DD/MM/YYYY"),
            vSpace(16),
            ElevatedButton(
              onPressed: () {
                if (!_f.currentState!.validate()) return;

                final report = PatientReport(
                  name: patientName.text,
                  age: int.tryParse(age.text) ?? 0,
                  diagnosis: diagnosis.text,
                  prescription: prescription.text,
                  notes: notes.text,
                  recoveryProgress: int.tryParse(recoveryProgress.text) ?? 0,
                  requiresFollowUp: requiresFollowUp,
                  nextAppointment: nextAppointment.text,
                );


                Navigator.pop(context);
              },
              child: Text(t('generateReport')),
            ),
          ],
        ),
      ),
    );
  }

  Widget _txt(String label, TextEditingController c,
      {int maxLines = 1, String? hint}) =>
      Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: TextFormField(
          controller: c,
          maxLines: maxLines,
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          validator: (v) =>
          v == null || v.isEmpty ? 'Required' : null,
        ),
      );

  Widget _num(String label, TextEditingController c) =>
      _txt(label, c, hint: "Enter number");
}

// Example data model (you can put in models.dart or similar)
class PatientReport {
  final String name;
  final int age;
  final String diagnosis;
  final String prescription;
  final String notes;
  final int recoveryProgress;
  final bool requiresFollowUp;
  final String nextAppointment;

  PatientReport({
    required this.name,
    required this.age,
    required this.diagnosis,
    required this.prescription,
    required this.notes,
    required this.recoveryProgress,
    required this.requiresFollowUp,
    required this.nextAppointment,
  });
}
