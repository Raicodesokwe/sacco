import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanReview extends StatelessWidget {
  const PlanReview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Review your plan',
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          );
  }
}