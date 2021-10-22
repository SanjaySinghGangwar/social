import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Splash(),
    );
  }
}
/*var status;
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        status=false;
        print('User is currently signed out!');
      } else {
        status=true;
        print('User is signed in!');
      }
    });*/
