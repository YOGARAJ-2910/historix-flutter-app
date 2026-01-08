# 📜 Historix

**Historix** is a historical exploration app that offers users a rich, interactive experience of historical locations, events, and cultural insights. It features a multilingual AI chatbot, event planning, and interactive maps, making history exploration both educational and fun.  

---

## 🌟 Features

- **Interactive Maps**: Explore historical sites with GPS tracking and map integration.
- **AI Chatbot**: Multilingual AI assistant to answer historical queries.
- **Event Planning**: Plan historical trips and events using a calendar and typeahead suggestions.
- **User Uploads**: Upload images, posts, and events.
- **Firebase Integration**: Authentication, Firestore database, and cross-platform support.
- **Cross-Platform Support**: Works on iOS, Android, Windows, macOS, and web (via Flutter).

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- [Firebase Account](https://firebase.google.com/)
- [Git](https://git-scm.com/)

```bash
### Installation

1. Clone the repository:


git clone https://github.com/YOGARAJ-2910/historix-flutter-app.git
cd historix-flutter-app
Install dependencies:

flutter pub get


Configure Firebase:

flutterfire configure


Run the app:

flutter run -d chrome
# or for mobile: flutter run -d <device-id>

🛠 Technology Stack

Flutter & Dart – Cross-platform mobile and desktop framework.

Firebase – Authentication, Firestore, and Hosting.

Flutter Plugins:

flutter_inappwebview – Web content rendering

firebase_core & firebase_auth – Firebase integration

cloud_firestore – Cloud Firestore database

flutter_map & latlong2 – Interactive maps

table_calendar – Event planning

flutter_tts – Text-to-speech

geolocator & geocoding – GPS & location services

provider – State management

image_picker – Uploading images

📁 Project Structure
lib/
├── screens/          # UI Screens
├── services/         # API & backend services
├── models/           # Data models
├── data/             # Static data
├── firebase_options.dart  # Firebase configuration
assets/
├── icons/
├── images/

⚙️ Configuration

Ensure your Firebase API keys are set in .env or a secure configuration file.

Avoid committing any secrets to the repository to comply with GitHub security policies.

🌐 Deployment

The app can be deployed using Firebase Hosting for web platforms:

firebase deploy

🤝 Contributing

Contributions are welcome! Please:

Fork the repository

Create a feature branch: git checkout -b feature/YourFeature

Commit your changes: git commit -m "Add feature"

Push to branch: git push origin feature/YourFeature

Open a Pull Request

📄 License

This project is licensed under the MIT License – see the LICENSE
 file for details.

📞 Contact

Developer: Yogaraj

GitHub: YOGARAJ-2910

Email: yogarajp29oct003@gmail.com
