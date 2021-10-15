import 'package:flutter/material.dart';



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
        appBar: AppBar(
          title: const Text('HOME'),
        ),
        body: const Center(
          child: Text('HELLO WORLD'),
        ),
      ),
    );
  }
}