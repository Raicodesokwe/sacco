import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplitPurchase extends StatelessWidget {
  const SplitPurchase({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 80,
              width: double.infinity,
              child: Text(
                'Dojo lets you split your purchase \n into multiple payments over time at any online store',
                style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
                maxLines: 3,
              ),
            ),
          );
  }
}