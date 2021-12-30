import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TuMonths extends StatelessWidget {
  const TuMonths({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        '2 monthly payments',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}