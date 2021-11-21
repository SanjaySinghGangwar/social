import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class mUtils{
  static Color mColor=Color(0xff81ec94);

  static String errorMessage='Something gone heywire !!';

  static showMessage(BuildContext context,String message) {
    final snackBar = SnackBar(
      content:  Text(message),
    );
    ScaffoldMessenger.of(context)
        .showSnackBar(snackBar);
  }
  static mToast(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: mColor,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}