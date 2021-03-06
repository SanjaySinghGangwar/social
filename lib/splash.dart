import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social/login.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    startTime();
    super.initState();
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    var status = false;
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        status = false;
        print('User is currently signed out!');
      } else {
        status = true;
        print('User is signed in!');
      }
    });

    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => status ? const Home() : const Login()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  height: 250,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15.0),
                  child: const Text("Made with ?????? in INDIA"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
