import 'dart:ffi';

import 'package:firebase_flutter/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var style1 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  bool passwordVisible = true;
  final formkey = GlobalKey<FormState>();
  bool iscircle = false;
  TextEditingController email = TextEditingController();

  validate(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      setState(() {
        iscircle = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
      setState(() {
        iscircle = false;
        email.text = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   title: Text("LoginScreen"),
          //   automaticallyImplyLeading: false,
          // ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/loginnew.png', fit: BoxFit.cover),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(.0),
                        child: Text(
                          "WELCOME BACK",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Text(
                          "Enter Your Credential To Continue!",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              alignLabelWithHint: true,
                              labelText: "Email:",
                              hintText: "Enter Your Email",
                              // focusedBorder: OutlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: Colors.deepPurpleAccent,
                              //   ),
                              // ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                  borderRadius: BorderRadius.circular(15))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email is Required";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: TextFormField(
                          obscureText: passwordVisible,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              alignLabelWithHint: true,
                              labelText: "Password:",
                              hintText: "Enter Your Password",
                              prefixIcon: Icon(Icons.password),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible = !passwordVisible;
                                    },
                                  );
                                },
                              ),
                              // focusedBorder: OutlineInputBorder(
                              //   borderSide: BorderSide(
                              //     color: Colors.deepPurpleAccent,
                              //   ),
                              // ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                  borderRadius: BorderRadius.circular(15))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password is Required";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password!",
                          style: TextStyle(
                              color: Colors.blue.shade700, fontSize: 15),
                        )),
                    iscircle
                        ? Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            onPressed: () {
                              validate(context);
                            },
                            child: Text("Login")),
                    Text("OR"),
                    // SignInButton(
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10)),
                    //   Buttons.Google,
                    //   onPressed: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => HomePage(),
                    //         ));
                    //   },
                    // ),
                    // InkWell(
                    //   splashColor: Colors.amber,
                    //   onTap: () {},
                    //   child: Ink(
                    //     width: 230,
                    //     height: 60,
                    //     decoration: BoxDecoration(
                    //         color: Colors.black,
                    //         borderRadius: BorderRadius.circular(10)),
                    //     child: Padding(
                    //       padding: EdgeInsets.all(6),
                    //       child: Wrap(
                    //         crossAxisAlignment: WrapCrossAlignment.center,
                    //         children: [
                    //           (Image.asset("assets/images/googleicon.png")),
                    //           SizedBox(width: 10),
                    //           Text(
                    //             'Sign in with Google',
                    //             style: TextStyle(color: Colors.white),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(StadiumBorder()),
                          elevation: MaterialStatePropertyAll(10),
                          overlayColor: MaterialStatePropertyAll(Colors.amber),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white)),
                      onPressed: () async {
                        await Future.delayed(Duration(seconds: 2));
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage("assets/images/googleicon.png"),
                              height: 25,
                              width: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 8),
                              child: Text(
                                'Sign in with Google',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text("Don't Have An Account?", style: style1),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Signup",
                            style: style1,
                          )),
                    ]),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
