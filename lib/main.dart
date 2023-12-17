import 'package:bankingsystem_linkedlist/pages/LandingPage.dart';
import 'package:bankingsystem_linkedlist/pages/LoginPage.dart';
import 'package:bankingsystem_linkedlist/pages/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: AppTheme().lightTheme,
            // darkTheme: AppTheme().darkTheme,
            themeMode: currentMode,
            routes: {
              '/sign_up': (context) => const SignUp(),
              '/login': (context) => const LoginPage(),
              //    '/profile': (context) => const ProfilePage(),
            },
            // home: const AuthCheck(),
            home: const LandingPage(),
          );
        });
  }
}
