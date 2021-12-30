import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorksHow extends StatelessWidget {
  const WorksHow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
            leading: Text(
              'How it works',
              style:
                  GoogleFonts.prompt(fontWeight: FontWeight.w900, fontSize: 17),
            ),
          );
  }
}