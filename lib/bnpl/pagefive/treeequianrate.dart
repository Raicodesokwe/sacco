import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TreeEquiAnRate extends StatelessWidget {
  const TreeEquiAnRate({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  Container(
            padding: const EdgeInsets.only(bottom: 20.0),
            width: size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Equivalent APR',
                  style: GoogleFonts.prompt(fontSize: 13),
                ),
                Text(
                  '96%',
                  style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
  }
}