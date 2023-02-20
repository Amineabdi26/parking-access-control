import 'dart:async';
//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:parking_app_sqlite/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget build(BuildContext context) {
    final timer = Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomeScreen())));
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 101, 108, 238),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome ! \nHave a nice day',
                  textAlign: TextAlign.center,
                  textStyle: const TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: false,
            ),
          )
        ]),
      ),
    );
  }
}
