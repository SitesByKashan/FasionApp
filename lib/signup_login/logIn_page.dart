import '../logic.dart';
import '../pages/home_page.dart';
import 'signup_page.dart';
import 'sigupLoiginWidgets.dart';
import '../utils/Appthemesetting.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text('Hi, Welcome back, you\'ve been missed'),
                  const SizedBox(height: 30),
                  const Simpletextfield(
                    'Email',
                    'example@gmail.com',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Passwordtextfield(labeltext: 'Password'),

                  Row(
                    children: [
                      InkWell(child: underLineTextButton('Forget Password')),
                    ],
                  ),

                  // Elevated button design

                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: (true) ? brownColor : greyColor,
                            ),
                            onPressed: () {
                              (true)
                                  ? pagereplace(context, const HomePage())
                                  : null;
                            },
                            child: const Text(
                              'Log In',
                              style: const TextStyle(color: whiteColor),
                            )),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  lineCenterText('or Log in with'),

                  const SizedBox(
                    height: 30,
                  ),

                  const OtherLoginOption(),

                  const SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      InkWell(
                          onTap: () => nextpage(context, const SignupPage()),
                          child: underLineTextButton('Sign up')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
