import 'package:flutter/material.dart';



class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  State<Friends> createState() => _ProfileState();
}

class _ProfileState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FRIENDS'),
        ),
        body: const Center(
          child: Text('Friends'),
        ),
      ),
    );
  }
}