import 'package:flutter/material.dart';
import 'package:my_app/screen/dasboard_Screen.dart';
import 'package:my_app/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,

      initialRoute: '/',

      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const DashboardScreen(),
      },
    );
  }
}