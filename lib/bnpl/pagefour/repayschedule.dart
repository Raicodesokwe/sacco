import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RepaySchedule extends StatelessWidget {
  const RepaySchedule({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
            'Repayment schedule*',
            style: GoogleFonts.prompt(
                fontWeight: FontWeight.w600,
                color: Colors.black54,
                fontSize: 18),
          );
  }
}