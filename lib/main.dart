import 'package:flutter/material.dart';
import 'package:volyvolt/scenes/ForgotPassword.dart';
import 'package:volyvolt/scenes/NewPassword.dart';
import 'package:volyvolt/scenes/Singin.dart';
import 'package:volyvolt/scenes/Singup.dart';
import 'package:volyvolt/scenes/home.dart';
import 'package:volyvolt/scenes/onBoardingScreen.dart';
import 'package:volyvolt/scenes/splashscreen.dart';
import 'package:volyvolt/user/dashboart.dart';
import 'package:volyvolt/user/profilesetting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Volyvolt App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF8BBC1F)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/home': (context) => const Home(),
        '/': (context) => const SplashScreen(),
        '/signup': (context) => const Singup(),
        '/signin': (context) => const Singin(),
        '/forgotpassword': (context) => const ForgotPassword(),
        '/newpasswoed': (context) => const NewPassword(),
        '/introductionscreen': (context) => const OnBoardingScreen(),

        '/dashboard': (context) => const Dashboard(),
        '/profilesetting': (context) => const ProfileSetting(),
      },
      //home: const Home() //MyHomePage(title: 'VolyVolt'),
    );
  }
}
