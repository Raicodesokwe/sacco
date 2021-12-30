import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class IngizaMoney extends StatelessWidget {
  const IngizaMoney({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            width: double.infinity,
            child: Text(
              'Enter the amount you wish to pay',
              textAlign: TextAlign.center,
              style: GoogleFonts.prompt(),
            ),
          );
  }
}