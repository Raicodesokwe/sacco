import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThreeSigiste extends StatelessWidget {
  const ThreeSigiste({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                '360 days',
                style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
              );
  }
}