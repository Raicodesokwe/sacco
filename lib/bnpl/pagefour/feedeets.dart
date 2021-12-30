import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FeeDeets extends StatelessWidget {
  const FeeDeets({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'View Fee Details',
                    style: GoogleFonts.prompt(
                        color: const Color(0xFF5113AA),
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Icon(
                    FontAwesomeIcons.arrowRight,
                    color: const Color(0xFF5113AA),
                  )
                ],
              ),
            );
  }
}