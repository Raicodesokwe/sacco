import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyMalipo extends StatelessWidget {
  const WeeklyMalipo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        '4 weekly payments',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}