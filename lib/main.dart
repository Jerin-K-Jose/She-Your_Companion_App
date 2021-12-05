import 'package:flutter/material.dart';
import 'package:pcos_companion/screens/blog.dart';
import 'package:pcos_companion/screens/diet.dart';
import 'package:pcos_companion/screens/forms.dart';
import 'package:pcos_companion/screens/home.dart';
import 'package:pcos_companion/screens/meditation.dart';
import 'package:pcos_companion/screens/register.dart';
import 'package:pcos_companion/screens/splash.dart';
import 'package:pcos_companion/screens/workout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PCOS COMPANION APP',
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Sanchez'),
      home: const SplashScreen(),
      routes: {
        '/register': (context) => const RegisterScreen(),
        '/forms': (context) => const FormScreen(),
        '/home': (context) => const HomeScreen(),
        '/diet': (context) => const DietScreen(),
        '/blog': (context) => BlogScreen(),
        '/meditation': (context) => const MeditationScreen(),
        '/workout': (context) => const WorkoutScreen(),
      },
    );
  }
}
