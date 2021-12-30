import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MweziNine extends StatelessWidget {
  const MweziNine({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        'payment in 9 months',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}