import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/signs/login/loginscreen.dart';
import 'package:saccoapp/signs/signup/signupscreen.dart';

class SignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            Image.asset(
              "assets/saccopic.png",
              width: size.width * 0.8,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              'Create a new account or sign in',
              style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Colors.black54),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LogIn()));
              },
              child: Container(
                height: 50.0,
                width: size.width * 0.85,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.pinkAccent.withOpacity(0.3),
                  color: const Color(0xFF5113AA),
                  elevation: 7.0,
                  child: Center(
                    child: const Text(
                      'I have a dojo account',
                      style: TextStyle(color: Colors.white, fontFamily: 'Trueno'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Container(
                height: 50.0,
                width: size.width * 0.85,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.pinkAccent.withOpacity(0.3),
                  color: const Color(0xFF5113AA),
                  elevation: 7.0,
                  child: Center(
                    child: const Text(
                      'I\'m new to dojo',
                      style: TextStyle(color: Colors.white, fontFamily: 'Trueno'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
