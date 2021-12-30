import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LateNess extends StatelessWidget {
  const LateNess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  Container(
            padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
            width: size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Late fees',
                  style: GoogleFonts.prompt(fontSize: 13),
                ),
                Text(
                  'Ksh 0',
                  style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
  }
}