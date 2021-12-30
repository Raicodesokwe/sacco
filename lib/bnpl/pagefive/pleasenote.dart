import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PleaseNote extends StatelessWidget {
  const PleaseNote({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return   Container(
            padding: const EdgeInsets.only(top: 15.0),
            width: size.width * 0.8,
            child: Text(
              'Please note that charges from mobile money transfer providers are not included',
              style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                  fontSize: 13),
            ),
          );
  }
}