import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigisTe extends StatelessWidget {
  const SigisTe({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                '62 days',
                style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
              );
  }
}