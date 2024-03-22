import 'package:firebase_flutter/Firebase_Services/splash_services.dart';
import 'package:firebase_flutter/UI/Auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<SplashScreen> {
  SplashServices splash_screen = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash_screen.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(title: Text("Splash Screen")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'assets/files/myanimation.json',
              ),
            ),
          ],
        ));
  }
}
