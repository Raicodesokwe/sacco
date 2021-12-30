import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SixMonths extends StatelessWidget {
  const SixMonths({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        '6 monthly payments',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}