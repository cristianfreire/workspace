import 'package:flutter/material.dart';
import 'package:chat_app/styles/style.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          height: 50.0,
        ),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Container(
            //height: MediaQuery.of(context).size.height - 50,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                    controller: userNameTextEditingController,
                    style: simpleTextStyle,
                    decoration:
                        textInputDecoration.copyWith(hintText: 'username')),
                TextField(
                    controller: emailTextEditingController,
                    style: simpleTextStyle,
                    decoration:
                        textInputDecoration.copyWith(hintText: 'email')),
                TextField(
                  controller: passwordTextEditingController,
                  style: simpleTextStyle,
                  decoration:
                      textInputDecoration.copyWith(hintText: 'password'),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      "Forgot Password?",
                      style: simpleTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color(0xff007ef4),
                        const Color(0xff2a75bc)
                      ]),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Sign Up",
                    style: infoTextStyle,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Sign Up with Google",
                    style: TextStyle(color: Colors.black87, fontSize: 17.0),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account? ",
                      style: infoTextStyle,
                    ),
                    Text(
                      'SignIn now',
                      style: infoTextStyle.copyWith(
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
