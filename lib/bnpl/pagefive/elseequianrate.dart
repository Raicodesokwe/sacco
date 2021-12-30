import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElseEquiAnRate extends StatelessWidget {
  const ElseEquiAnRate({ Key? key }) : super(key: key);

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
                  '24%',
                  style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
  }
}