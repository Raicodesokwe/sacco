import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KarEoki extends StatelessWidget {
  const KarEoki({ Key? key }) : super(key: key);

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
                  'Mobile carrier charges',
                  style: GoogleFonts.prompt(fontSize: 13),
                ),
                Text(
                  'Check with \n your carrier',
                  style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
  }
}