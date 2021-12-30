import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/signs/login/phoneloginscreen.dart';


class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome back!',
              style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black54),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Image.asset(
              'assets/keyz.png',
              width: size.width * 0.9,
            ),
            SizedBox(
              height: size.height * 0.15,
            ),
            GestureDetector(
              onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PhoneLoginscreen()));
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
                      'Sign in with Phone Number',
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
