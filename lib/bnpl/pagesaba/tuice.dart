import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TuIce extends StatelessWidget {
  const TuIce({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Text(
                    'PAYMENT',
                    style: GoogleFonts.prompt(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '1 of 2',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '2 of 2',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  
                ],
              );
  }
}