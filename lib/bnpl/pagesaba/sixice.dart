import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SixIce extends StatelessWidget {
  const SixIce({ Key? key }) : super(key: key);

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
                    '1 of 6',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '2 of 6',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '3 of 6',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '4 of 6',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '5 of 6',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    '6 of 6',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  
                ],
              );
  }
}