import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EquiMonRate extends StatelessWidget {
  const EquiMonRate({ Key? key }) : super(key: key);

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
                  'Equivalent monthly interest rate',
                  style: GoogleFonts.prompt(fontSize: 13),
                ),
                Text(
                  '18.86%',
                  style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
  }
}