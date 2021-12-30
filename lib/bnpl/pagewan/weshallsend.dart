import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeShallSend extends StatelessWidget {
  const WeShallSend({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFfce7fe),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Center(
                child: Text(
                  '3',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.prompt(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
              ),
            ),
            title: Text(
              'We\'ll send the amount to your M-pesa to enable you to complete the payment',
              style: GoogleFonts.prompt(),
            ),
          );
  }
}