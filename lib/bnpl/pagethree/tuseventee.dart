import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TusevenTee extends StatelessWidget {
  const TusevenTee({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                '270 days',
                style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
              );
  }
}