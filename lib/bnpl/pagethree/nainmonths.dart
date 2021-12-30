import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NainMonths extends StatelessWidget {
  const NainMonths({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        '9 monthly payments',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}