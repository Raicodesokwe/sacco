import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoInstall extends StatelessWidget {
  const FoInstall({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        '4 installments',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}