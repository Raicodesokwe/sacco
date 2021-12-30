import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlyCharged extends StatelessWidget {
  const OnlyCharged({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'You\'ll only be charged for what you end up spending',
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          );
  }
}