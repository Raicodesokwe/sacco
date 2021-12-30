import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthlyMalipo extends StatelessWidget {
  const MonthlyMalipo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
                        '1 monthly payment',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}