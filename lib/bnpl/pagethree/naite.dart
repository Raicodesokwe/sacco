import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NaIte extends StatelessWidget {
  const NaIte({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                '90 days',
                style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
              );
  }
}