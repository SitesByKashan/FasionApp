import 'dart:async';
import 'onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      radius: 25,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.brown,
                      child: Text(
                        'f',
                        style: GoogleFonts.abrilFatface(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                RichText(
                    text: TextSpan(
                        text: ' fashion',
                        style: GoogleFonts.abrilFatface(
                            color: Colors.black, fontSize: 30),
                        children: const [
                      TextSpan(
                          text: '.',
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.brown,
                          ))
                    ]))
              ],
            ),
            Text('Developed by : M.Kashan Malik Awan'),
          ],
        )),
      ),
    );
  }
}
