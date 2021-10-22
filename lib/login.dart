import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          child: SafeArea(
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  "GET STARTED",
                  style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                    height: 200,
                    width: 150,
                    child: Image(
                      image: AssetImage('assets/images/phone.png'),
                    )),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 2.0),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.white, width: 2.0),
                        ),
                        icon: Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'Mobile',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
