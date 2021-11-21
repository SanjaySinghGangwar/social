import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Drawer/drawer_screen.dart';
import 'Drawer/home_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _ProfileState();

}
class _ProfileState extends State<Home> {

  @override
  void initState() {

    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        print('HOME :: User is currently signed out!');
      } else {
        print('HOME :: User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
