import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MweziPili extends StatelessWidget {
  const MweziPili({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        'payment in 2 months',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}