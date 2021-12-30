import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HowMuch extends StatelessWidget {
  const HowMuch({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'How much is your purchase?',
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          );
  }
}