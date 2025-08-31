import 'package:flutter_online_appointment_booking_app/src/app_state.dart';
import 'package:flutter/material.dart';

//enum AppLang { en, hi }
extension on AppLang { String get code => this == AppLang.en ? 'en' : 'hi'; }
enum AppLang { en('en'),hi('hi');

  final String code;
  const AppLang(this.code);
}

class T {
  final AppLang lang;
  T(this.lang);
  String call(String k) => _map[k]?[lang] ?? k;

  static const _map = <String, Map<AppLang, String>>{
    'welcomeTitle': {AppLang.en: 'Welcome, Online appointment booking app', AppLang.hi: 'स्वागत है'},
    'slogan': {
      AppLang.en: '',
      AppLang.hi: ''
    },
    'mobile': {AppLang.en: 'Mobile Number', AppLang.hi: 'मोबाइल नंबर'},
    'otp': {AppLang.en: 'OTP', AppLang.hi: 'ओटीपी'},
    'login': {AppLang.en: 'Continue', AppLang.hi: 'लॉग इन'},
     'name': {AppLang.en: 'Name', AppLang.hi: 'नाम'},
    'gender': {AppLang.en: 'Gender', AppLang.hi: 'लिंग'},
    'male': {AppLang.en: 'Male', AppLang.hi: 'पुरुष'},
    'female': {AppLang.en: 'Female', AppLang.hi: 'महिला'},
    'email': {AppLang.en: 'Email', AppLang.hi: 'ईमेल'},
    'city': {AppLang.en: 'City', AppLang.hi: 'शहर'},
    'profile': {AppLang.en: 'Profile', AppLang.hi: 'प्रोफ़ाइल'},
    'service': {AppLang.en: 'Service', AppLang.hi: 'सेवा'},
    'student': {AppLang.en: 'Student', AppLang.hi: 'विद्यार्थी'},
    'business': {AppLang.en: 'Business', AppLang.hi: 'व्यवसाय'},
    'institute': {AppLang.en: 'Institute (if not Business)', AppLang.hi: 'संस्थान (यदि व्यवसाय नहीं)'},
    'language': {AppLang.en: 'Preferred Language', AppLang.hi: 'पसंदीदा भाषा'},
    'register': {AppLang.en: 'Register', AppLang.hi: 'पंजीकरण'},
    'home': {AppLang.en: 'Home', AppLang.hi: 'होम'},
    'webinarsAttended': {AppLang.en: 'Your Appointments', AppLang.hi: ''},
    'reportCard': {AppLang.en: 'Health Report Results', AppLang.hi: ''},
    'feedbackForm': {AppLang.en: 'Feedback Form', AppLang.hi: 'प्रतिक्रिया फ़ॉर्म'},
    'registerForWebinar': {AppLang.en: 'Video Consultation', AppLang.hi: ''},
    'priceInclGst': {AppLang.en: 'Price (incl. GST)', AppLang.hi: 'कीमत (जीएसटी सहित)'},
    'about': {AppLang.en: 'About', AppLang.hi: 'परिचय'},
    'disclaimer': {AppLang.en: 'Disclaimer: Money is not refundable.', AppLang.hi: 'अस्वीकरण: राशि वापसी योग्य नहीं है।'},
    'paymentOptions': {AppLang.en: 'Payment Options', AppLang.hi: 'भुगतान विकल्प'},
    'inb': {AppLang.en: 'NetBanking (INB)', AppLang.hi: 'नेटबैंकिंग'},
    'cards': {AppLang.en: 'Cards', AppLang.hi: 'कार्ड'},
    'upi': {AppLang.en: 'UPI', AppLang.hi: 'यूपीआई'},
    'payAndRegister': {AppLang.en: 'Pay & Register', AppLang.hi: 'भुगतान करें और पंजीकृत हों'},
    'ratings1to10': {AppLang.en: 'Rate from 1 to 10', AppLang.hi: '1 से 10 तक रेट करें'},
    'content': {AppLang.en: 'Content', AppLang.hi: 'सामग्री'},
    'speaker': {AppLang.en: 'Speaker', AppLang.hi: 'वक्ता'},
    'learned': {AppLang.en: 'Learned something new & useful', AppLang.hi: 'कुछ नया और उपयोगी सीखा'},
    'overall': {AppLang.en: 'Overall', AppLang.hi: 'कुल मिलाकर'},
    'submit': {AppLang.en: 'Submit', AppLang.hi: 'सबमिट'},
    'age': {AppLang.en: 'Age', AppLang.hi: 'उम्र'},
    'income': {AppLang.en: 'Take-home Pay / Family Income (₹)', AppLang.hi: 'टेक-होम/परिवार आय (₹)'},
    'dependents': {AppLang.en: 'Dependents', AppLang.hi: 'निर्भर'},
    'homeLoan': {AppLang.en: 'Home Loan (₹)', AppLang.hi: 'होम लोन (₹)'},
    'carLoan': {AppLang.en: 'Car Loan (₹)', AppLang.hi: 'कार लोन (₹)'},
    'otherLoans': {AppLang.en: 'Other Loans (₹)', AppLang.hi: 'अन्य लोन (₹)'},
    'hasImmovable': {AppLang.en: 'Own immovable asset?', AppLang.hi: 'क्या अचल संपत्ति है?'},
    'immovableValue': {AppLang.en: 'Immovable Asset Value (₹, Lacs)', AppLang.hi: 'अचल संपत्ति मूल्य (₹, लाख)'},
    'movableSavings': {AppLang.en: 'Movable Assets / Savings (₹, Lacs)', AppLang.hi: 'चल संपत्ति/सेविंग्स (₹, लाख)'},
    'otherAssets': {AppLang.en: 'Other Assets (₹)', AppLang.hi: 'अन्य संपत्ति (₹)'},
    'otherLiab': {AppLang.en: 'Other Liabilities (₹)', AppLang.hi: 'अन्य देनदारियाँ (₹)'},
    'generateCert': {AppLang.en: 'Generate Certificate', AppLang.hi: 'प्रमाणपत्र बनाएं'},
    'certificate': {AppLang.en: 'Certificate', AppLang.hi: 'प्रमाणपत्र'},
    'financialHealth': {AppLang.en: 'Financial Health – Overall', AppLang.hi: 'वित्तीय स्वास्थ्य – समग्र'},
    'good': {AppLang.en: 'Good', AppLang.hi: 'अच्छा'},
    'average': {AppLang.en: 'Average', AppLang.hi: 'औसत'},
    'poor': {AppLang.en: 'Needs Attention', AppLang.hi: 'सुधार आवश्यक'},
    'changeLang': {AppLang.en: 'Language', AppLang.hi: 'भाषा'},
  };
}

// Lightweight state provider
class InheritedState extends InheritedWidget {
  final AppState appState;
  const InheritedState({super.key, required this.appState, required super.child});
  static AppState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedState>()!.appState;
  @override
  bool updateShouldNotify(covariant InheritedState oldWidget) => oldWidget.appState != appState;
}
