import 'dart:async';

import 'package:firebase_flutter/UI/Auth/login_screen.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    // Timer.periodic(Duration(seconds: 3), (timer) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => LoginScreen()));
    // });
    Timer(
        Duration(milliseconds: 6000),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            )));
  }
}
