import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NineIce extends StatelessWidget {
  const NineIce({ Key? key }) : super(key: key);

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
                    '1 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '2 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '3 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '4 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '5 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '6 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '7 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '8 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '9 of 9',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  
                ],
              );
  }
}