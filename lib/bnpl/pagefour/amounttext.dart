import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmountText extends StatelessWidget {
  const AmountText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Text(
                      'AMOUNT',
                      style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600,
                      ),
                    );
  }
}