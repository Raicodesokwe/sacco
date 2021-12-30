import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DojoJumia extends StatelessWidget {
  const DojoJumia({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
              leading: Text(
                'Pay with Dojo \n at Jumia',
                style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w900, fontSize: 17),
              ),
              trailing: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFfce7fe),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      "assets/dojologo.png",
                      fit: BoxFit.cover,
                    )),
              ));
  }
}