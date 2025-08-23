import 'package:flutter/material.dart';

import 'screens/login.dart';
import 'screens/signup.dart';
import 'screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        //'/login': (context) => LoginScreen(),
        //'/signup': (context) => SignupScreen(),
      },
    );
  }
}
