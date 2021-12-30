import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/signs/signup/phonesignupscreen.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello and welcome to dojo!',
              style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black45
                 
                  ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Image.asset(
              'assets/signup.png',
              width: size.width * 0.9,
            ),
            SizedBox(
              height: size.height * 0.15,
            ),
            GestureDetector(
              onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PhoneSignupscreen()));
            },
              child: Container(
                height: 50.0,
                width: size.width * 0.85,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  shadowColor: Colors.purpleAccent,
                  color: const Color(0xFF5113AA),
                  elevation: 8.0,
                  child: Center(
                    child: const Text(
                      'Register with Phone Number',
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
