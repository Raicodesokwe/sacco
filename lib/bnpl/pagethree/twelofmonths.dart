import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwelofMonths extends StatelessWidget {
  const TwelofMonths({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '12 monthly payments',
      style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
    );
  }
}
