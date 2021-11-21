import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Utils/mUtils.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneController = TextEditingController();

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
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Center(
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 200,
                  width: 150,
                  child: Image(
                    image: AssetImage('assets/images/phone.png'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    elevation: 10,
                    child: CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'IN',
                      favorite: const ['+91', 'IN'],
                      // countryFilter: const ['IN', 'FR','US'],
                      showFlagDialog: true,
                      comparator: (a, b) => b.name!.compareTo(a.name!),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    elevation: 10,
                    child: TextField(
                      controller: phoneController,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent, width: 2.0),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'ENTER MOBILE NUMBER',
                        hintStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 12.0, top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const InkWell(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.transparent,
                          size: 46.0,
                        ),
                      ),
                      const Center(
                        child: Text(
                          "OR",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('Continue ' + phoneController.text);
                        },
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 46.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    color: Colors.black,
                    elevation: 10,
                    child: InkWell(
                      onTap: () {
                        tryMyApplication(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Center(
                          child: Text(
                            "TRY OUR APP",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void sendToHome(BuildContext context) {
    mUtils.showMessage(context, "Welcome");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
  }

  void tryMyApplication(BuildContext context) {
    FirebaseAuth.instance.signInAnonymously().whenComplete(() => {sendToHome(context)}).onError((error, stackTrace) => mUtils.mToast(mUtils.errorMessage));
  }
}
