import 'package:flutter/material.dart';
import 'i18n.dart';

class User {
  String name;
  String mobile;
  String email;
  String city;
  String profile;
  String? institute;
  User({required this.name, required this.mobile, required this.email, required this.city, required this.profile, this.institute});
}
class Appointment {
  final String id;
  final String doctor;
  final String specialty;
  final String treatment;
  final DateTime date;
  final double fees;

  Appointment({
    required this.id,
    required this.doctor,
    required this.specialty,
    required this.treatment,
    required this.date,
    required this.fees,
  });
}


class FeedbackModel {
  int content, speaker, learned, overall;
  FeedbackModel({required this.content, required this.speaker, required this.learned, required this.overall});
}

class ReportCard {
  int age;
  int dependents;
  double income;
  double homeLoan, carLoan, otherLoans;
  bool hasImmovable;
  double immovable, movableSavings, otherAssets, otherLiab;
  ReportCard({
    required this.age,
    required this.dependents,
    required this.income,
    required this.homeLoan,
    required this.carLoan,
    required this.otherLoans,
    required this.hasImmovable,
    required this.immovable,
    required this.movableSavings,
    required this.otherAssets,
    required this.otherLiab,
  });
}

class AppState extends ChangeNotifier {
  AppLang lang = AppLang.en;
  var languageCode="hi";
  User? user;
  var isOTPSend=false;
  DateTime? lastAttended;
  final appointments = <Appointment>[
    Appointment(
      id: 'a1',
      doctor: 'Dr. Arvind Sharma',
      specialty: 'Cardiologist',
      treatment: 'Heart Checkup & ECG',
      date: DateTime.now().add(const Duration(days: 2)),
      fees: 1200,
    ),
    Appointment(
      id: 'a2',
      doctor: 'Dr. Neha Verma',
      specialty: 'Dermatologist',
      treatment: 'Skin Allergy Treatment',
      date: DateTime.now().add(const Duration(days: 5)),
      fees: 800,
    ),
    Appointment(
      id: 'a3',
      doctor: 'Dr. Rahul Singh',
      specialty: 'Orthopedic',
      treatment: 'Knee Pain Consultation',
      date: DateTime.now().add(const Duration(days: 7)),
      fees: 1000,
    ),
  ];

  final feedbacks = <FeedbackModel>[];
  ReportCard? report;

  T get t => T(lang);

  void toggleLang() {
    lang = lang == AppLang.en ? AppLang.hi : AppLang.en;
    notifyListeners();
  }

  void sendOTP(String mobile) {
    isOTPSend=true;
    notifyListeners();
  }
void login(String mobile, String otp) {
    // Dummy login: auto-create a minimal user if not registered
    user ??= User(name: 'Guest', mobile: mobile, email: 'guest@example.com', city: 'Mumbai', profile: 'Service');
    notifyListeners();
  }

  void setUser(User u) { user = u; notifyListeners(); }
  void markAttended() { lastAttended = DateTime.now(); notifyListeners(); }
  void addFeedback(FeedbackModel f) { feedbacks.add(f); notifyListeners(); }
  void saveReport(ReportCard r) { report = r; notifyListeners(); }
}