import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnText extends StatelessWidget {
  const BtnText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
              'Pay with Dojo',
              style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white),
            );
  }
}