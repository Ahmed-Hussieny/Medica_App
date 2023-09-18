import 'package:flutter/material.dart';
import 'package:medicen_app/SignIn.dart';

class Outboarding extends StatelessWidget {
   const Outboarding({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(

        body: GestureDetector(
          onTap: () {
            // Navigate to the Sign In page
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>  SignInPage(),
              ),
            );
          },
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("images/Medinova.png"),
                  width: 120,
                ),
                SizedBox(height: 20,),
                Text(
                  "Medica",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 60,
                    color: Color(0xff0B8FAC),
                    fontFamily: 'Lexend',
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
