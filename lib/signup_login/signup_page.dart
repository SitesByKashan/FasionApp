import '../logic.dart';
import 'logIn_page.dart';
import 'sigupLoiginWidgets.dart';
import '../utils/Appthemesetting.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool checkboxValue = false;
  bool showbutton = false;
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
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Fill your infomation below or Register with your social account',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  const Simpletextfield(
                    'Name',
                    'M.Kashan Malik Awan',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Simpletextfield(
                    'Email',
                    'example@gmail.com',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Passwordtextfield(labeltext: 'Password'),
                  const SizedBox(
                    height: 15,
                  ),

                  Row(
                    children: [
                      Checkbox(
                        activeColor: brownColor,
                        value: checkboxValue,
                        onChanged: (value) {
                          checkboxValue = value ?? false;
                          showbutton = !showbutton;
                          setState(() {});
                        },
                      ),
                      const Text('Agree with', style: TextStyle()),
                      InkWell(child: underLineTextButton('Terms & Condition')),
                    ],
                  ),

                  // Elevated button design
                  //sigupButton('Sign Up',),showbutton),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  (showbutton) ? brownColor : greyColor,
                            ),
                            onPressed: () {
                              (showbutton)
                                  ? pagereplace(context, const LogIn())
                                  : null;
                            },
                            child: Text(
                              'Sign Up',
                              style: const TextStyle(color: whiteColor),
                            )),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  lineCenterText('or Sign up in with'),

                  const SizedBox(
                    height: 20,
                  ),

                  const OtherLoginOption(),

                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      InkWell(
                          onTap: () => pagereplace(context, const LogIn()),
                          child: underLineTextButton('Log in')),
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
