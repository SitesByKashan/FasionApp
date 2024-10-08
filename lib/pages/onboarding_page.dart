import '../logic.dart';
import '../signup_login/logIn_page.dart';
import '../signup_login/signup_page.dart';
import '../utils/Appthemesetting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: OnBoardingSlider(
        trailing: const Text(
          'Login',
          style: TextStyle(color: brownColor),
        ),
        trailingFunction: () {
          pagereplace(context, const LogIn());
        },
        finishButtonText: 'Get Started',
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: brownColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          elevation: 10,
        ),
        controllerColor: brownColor,
        pageBackgroundColor: whiteColor,
        skipTextButton: const Text(
          'SKIP',
          style: TextStyle(color: brownColor),
        ),
        totalPage: 3,
        headerBackgroundColor: whiteColor,
        speed: 3,
        onFinish: () {
          pagereplace(context, const SignupPage());
        },
        pageBodies: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 480,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'Seamless\t',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Shopping Experience',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                  child: Text(
                    'Lorem ipsum dolor sit amat,Consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 480),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'Seamless\t',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'Shopping Experience',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                  child: SizedBox(
                    child: Text(
                      'Lorem ipsum dolor sit amat,Consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 480,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: 'Seamless\t',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold),
                      children: [
                        const TextSpan(
                          text: 'Shopping Experience',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Lorem ipsum dolor sit amat,Consectetur adipiscing elit, sed do eiusmod tempor incididunt',
                  ),
                ),
              ],
            ),
          ),
        ],
        background: const [
          Image(
            image: AssetImage('assets/images/onboarding01.PNG'),
            height: 450,
          ),
          Image(
            image: AssetImage('assets/images/onboarding01.PNG'),
            height: 450,
          ),
          Image(
            image: AssetImage('assets/images/onboarding01.PNG'),
            height: 450,
          ),
        ],
      ),
    ));
  }
}
