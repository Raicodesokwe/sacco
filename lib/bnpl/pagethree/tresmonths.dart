import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TresMonths extends StatelessWidget {
  const TresMonths({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        '3 monthly payments',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}