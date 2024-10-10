# firebase_cloud_message_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Steps:

Go to Firebase Console and create a proyect 

- firebase login
If that doesnt work npm install -g firebase-tools
Then re-try again the command
- dart pub global activate flutterfire_cli
- flutterfire configure
Select the proyect you created before
Select the platforms
- flutter pub add firebase_core
- flutter pub add firebase_messaging

Set main function like this

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

if there's and android sdk issue, change the version in the android\app\build.gradle


Set up everything from FirebaseAPI file, add the initialization within the main, do a restart and accept notifications.
On debugConsole there will be a token that within the 