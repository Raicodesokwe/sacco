import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeeAmount extends StatelessWidget {
  const FeeAmount({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
            padding: const EdgeInsets.only(bottom: 10.0),
            width: size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FEE',
                  style: GoogleFonts.prompt(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                Text(
                  'AMOUNT',
                  style: GoogleFonts.prompt(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          );
  }
}