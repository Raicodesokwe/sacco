import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentColumn extends StatelessWidget {
  const PaymentColumn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
                  children: [
                    Text(
                      'PAYMENT',
                      style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '1 of 1',
                      style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w600, color: Colors.black54),
                    ),
                  ],
                );
  }
}