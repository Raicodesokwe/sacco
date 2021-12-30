import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PageUno extends StatelessWidget {
  const PageUno({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
            tileColor: const Color(0xFFfce7fe),
            title: Text(
              'Pay with Dojo',
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            trailing: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  FontAwesomeIcons.windowClose,
                )),
          );
  }
}