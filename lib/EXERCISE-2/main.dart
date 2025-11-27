import 'package:flutter/material.dart';
import 'package:w8_practice_list_pass_fuction/EXERCISE-2/ui/screens/temperature_screen.dart';

import 'ui/screens/welcome_screen.dart';
 



class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool isWelcomePage = true;

  void changeScreen() {
    setState(() {
      isWelcomePage = false;      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff16C062), Color(0xff00BCDC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: isWelcomePage
              ? WelcomeScreen(onStart: changeScreen)
              : TemperatureScreen(),
        ),
      ),
    );
  }
}
void main() {
  runApp(const TemperatureApp());
}