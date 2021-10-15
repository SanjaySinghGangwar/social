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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [DrawerScreen(), HomeScreen()],
        ),
      ),
    );
  }
}
