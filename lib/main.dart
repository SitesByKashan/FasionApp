import 'pages/splash_page.dart';
import 'utils/Appthemesetting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          ),
        primaryColor: Colors.brown,
        primarySwatch: Colors.brown,
      ),
      home: const SplashPage(),
    );
  }
}
