import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContinueText extends StatelessWidget {
  const ContinueText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
              'Continue',
              style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white),
            );
  }
}