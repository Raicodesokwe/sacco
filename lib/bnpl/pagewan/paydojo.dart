import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayDojo extends StatelessWidget {
  const PayDojo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFfce7fe),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Center(
                child: Text(
                  '1',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.prompt(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
              ),
            ),
            title: Text(
              'When ready to pay,tap\n\'pay with Dojo\'',
              style: GoogleFonts.prompt(),
            ),
          );
  }
}