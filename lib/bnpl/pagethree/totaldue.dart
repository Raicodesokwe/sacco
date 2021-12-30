import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalDue extends StatelessWidget {
  const TotalDue({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Text(
                        'Total Amount Due',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                      );
  }
}