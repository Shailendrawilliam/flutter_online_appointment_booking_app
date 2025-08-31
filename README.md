🏥 Doctor Appointment Booking App

A Flutter-based mobile app for booking doctor appointments online.
Patients can view available doctors, check their specialties, treatments, consultation fees, and book appointments easily.

🚀 Features

📋 Appointment List – Browse all available doctors & treatments

👨‍⚕️ Doctor Details – View doctor’s name, specialty, consultation type, fees, and schedule

📅 Appointment Booking – Book and confirm an appointment in one click

🔍 Filters (optional) – Search doctors by specialty or treatment

🌐 Multilingual Support – Easily add i18n (translations) using i18n.dart

🎨 Modern UI – Clean, card-based design with Flutter widgets

🔒 State Management – Powered by InheritedState for smooth updates

📂 Project Structure
lib/
 ├── models/
 │    └── appointment.dart      # Appointment data model
 ├── pages/
 │    ├── appointment_list.dart # Appointment list screen
 │    ├── appointment_details.dart # Appointment details & booking
 │    └── webinar_list.dart     # (Example from webinars, repurposed)
 ├── src/
 │    ├── app_state.dart        # State management (appointments, bookings)
 │    └── i18n.dart             # Translations
 └── widgets/
      └── common.dart           # Shared UI widgets

📱 Screenshots (sample UI)

Appointment List Page

Shows doctors with specialties, treatments, and consultation fees

Appointment Detail Page

Displays treatment details, consultation date, and a Book Now button

🛠️ Installation

Clone the repo

git clone https://github.com/your-username/doctor-appointment-app.git
cd doctor-appointment-app


Install dependencies

flutter pub get


Run the app

flutter run

📖 Usage

Open the app

Browse available doctors and treatments

Tap a doctor to see details

Confirm booking with Book Now

🧑‍💻 Example Data
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
];

🔮 Future Enhancements

🏥 Online video consultation integration

📊 Patient medical history & reports

💳 Payment gateway integration (Razorpay, UPI, Stripe, etc.)

🔔 Push notifications for reminders

📍 Geolocation-based doctor search

🤝 Contributing

Contributions are welcome!

Fork the project

Create a feature branch

Submit a pull request 🚀

📄 License

This project is licensed under the MIT License.
