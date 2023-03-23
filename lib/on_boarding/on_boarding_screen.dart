import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:sign_language_recognition/screens/three_d_screen.dart';
import 'package:sign_language_recognition/login/login_screen.dart';

import 'bulid-images.dart';


class BordingModel
{
  final String image;
  final String title;
  final String body;

  BordingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'one',
            body:
            'Historians are like deaf people who go on answering questions that no one has asked them..',
            image:   Lottie.asset('assets/json/1.json'),
            //BulidImages(image: 'assets/images/1.jpg'),
            decoration: getPageDecoration(),
            // decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'two',
            body:
            'I\'m really excited to educate the world about what deaf people can do.',
            image:   Lottie.asset('assets/json/2.json'),
            //BulidImages(image: 'assets/images/2.jpg'),
            decoration: getPageDecoration(),
            // decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'three',
            body:
            'If thou art a master, be sometimes blind; \n if a servant, sometimes deaf.',
            image:  Lottie.asset('assets/json/3.json'),
            //BulidImages(image: 'assets/images/3.jpg'),
            decoration: getPageDecoration(),
            // decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'four',
            body:
            'I think the biggest misconception is that people think deaf people are not able to do things.',
            image:  Lottie.asset('assets/json/4.json'),
            //BulidImages(image: 'assets/images/4.jpg'),
            decoration: getPageDecoration(),
            // decoration: getPageDecoration(),
            footer: Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave ,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 10,
                intensity: 0.8,
                surfaceIntensity: 0.2,
                lightSource: LightSource.topLeft,
                color: Colors.deepPurple,),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                ),
                onPressed: () => goToHome(context),
                child: const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
        next:const Icon(Icons.arrow_forward_ios),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.bold)),
        onDone: ()=> goToHome(context),
        showSkipButton: true,
        skip: const Text('Skip'),
        dotsDecorator: getDotDecoration(),
        nextFlex: 0,
        skipOrBackFlex: 0,
        animationDuration: 500,
        isProgressTap: true,
        isProgress: true,
        // onChange: (index) => print(index),
        // freeze: false,
        // onSkip: () => print('Skip'),
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      bodyTextStyle: TextStyle(fontSize: 20),
      imagePadding: EdgeInsets.all(24),
      titlePadding: EdgeInsets.zero,
      bodyPadding: EdgeInsets.all(20),
      pageColor: Colors.white,
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
        color: const Color(0xFFBDBDBD),
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeColor: Colors.deepPurple,
        activeShape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));
  }

  void goToHome(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }
}
