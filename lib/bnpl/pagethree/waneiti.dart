import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WanEiti extends StatelessWidget {
  const WanEiti({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
                '180 days',
                style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
              );
  }
}