import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MweziSix extends StatelessWidget {
  const MweziSix({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        'payment in 6 months',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}