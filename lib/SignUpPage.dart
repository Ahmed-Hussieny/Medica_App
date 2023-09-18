import 'package:flutter/material.dart';
import 'package:medicen_app/HomePage.dart';
import 'package:medicen_app/SignIn.dart';
import 'package:medicen_app/TextComponent.dart';
import 'package:medicen_app/TextInputComponent.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextComponent(
                    message: "Create New Account",
                    fontColor: Color(0xff0B8FAC),
                    fontSize: 25,
                    fontFamily: "Lexend",
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                children: [
                  TextComponent(
                    message: "Full Name",
                    fontColor: Color(0xff000000),
                    fontSize: 20,
                  ),
                ],
              ),
            ),
            Container(
                child: TextInputComponent(
                    hint: "Name", holder: "Enter Your Full Name")),
            Container(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: Row(
                children: [
                  TextComponent(
                    message: "Password",
                    fontColor: Color(0xff000000),
                    fontSize: 20,
                  ),
                ],
              ),
            ),
            Container(
                child: TextInputComponent(
              hint: "Password",
              holder: "Enter Your Password",
              icon1: Icons.visibility_off,
              iconColor: Colors.blue,
            )),
            Container(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: Row(
                children: [
                  TextComponent(
                    message: "Email",
                    fontColor: Color(0xff000000),
                    fontSize: 20,
                  ),
                ],
              ),
            ),
            Container(
                child: TextInputComponent(
                    hint: "Email", holder: "Enter Your Email")),
            Container(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: Row(
                children: [
                  TextComponent(
                    message: "Mobile Number",
                    fontColor: Color(0xff000000),
                    fontSize: 20,
                  ),
                ],
              ),
            ),
            Container(
                child: TextInputComponent(
                    hint: "Phone", holder: "Enter Your Phone Number")),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: () {
                  Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 140),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(right: 10),
                      child: TextComponent(
                        message: "OR",
                        fontColor: Color.fromARGB(255, 109, 107, 107),
                        fontSize: 18,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.facebook,
                        size: 35, color: Colors.blueAccent),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'images/google.png',
                        width: 33,
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          TextComponent(
                            message: "Don't have an account? ",
                            fontColor: Color.fromARGB(255, 109, 107, 107),
                            fontSize: 15,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()));
                            },
                            child: TextComponent(
                              message: "Sign In ",
                              fontColor: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
