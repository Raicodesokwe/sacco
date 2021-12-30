import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTileText extends StatelessWidget {
  const RadioTileText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                '28 days',
                style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
              );
  }
}