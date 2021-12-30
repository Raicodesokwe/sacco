import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FlexIble extends StatelessWidget {
  const FlexIble({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(
                    flex: 1,
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFfce7fe),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Center(
                          child: Text('KSH',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.prompt(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black)),
                        )));
  }
}