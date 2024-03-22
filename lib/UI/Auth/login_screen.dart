import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var style1 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   // title: Text("LoginScreen"),
          //   automaticallyImplyLeading: false,
          // ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/loginnew.png', fit: BoxFit.cover),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
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
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Password:",
                        hintText: "Enter Your Password",
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Colors.deepPurpleAccent,
                        //   ),
                        // ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(15))),
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
                    ElevatedButton(onPressed: () {}, child: Text("Login")),
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
