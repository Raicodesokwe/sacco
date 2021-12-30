import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MweziTatu extends StatelessWidget {
  const MweziTatu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
                        'payment in 3 months',
                        style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                      );
  }
}