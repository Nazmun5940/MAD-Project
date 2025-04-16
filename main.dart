import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/home_screen.dart';
import 'screens/physical_fitness_screen.dart';
import 'screens/mental_wellness_screen.dart';
import 'models/user_model.dart';
import 'services/auth_service.dart';

void main() {
  runApp(FitMeApp());
}

class FitMeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitMe',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/physical_fitness': (context) => PhysicalFitnessScreen(),
        '/mental_wellness': (context) => MentalWellnessScreen(),
      },
    );
  }
}
