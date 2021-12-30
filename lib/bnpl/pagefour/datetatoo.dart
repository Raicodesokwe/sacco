import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTatoo extends StatelessWidget {
  const DateTatoo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     String getCurrentDate() {
      var date = DateTime.now().add(Duration(days: 90)).toString();

      var dateParse = DateTime.parse(date);

      var formattedDate =
          "${dateParse.day}/${dateParse.month}/${dateParse.year}";
      return formattedDate.toString();
    }
    return Column(
                  children: [
                    Text(
                      'DATE',
                      style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      getCurrentDate(),
                      style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w600, color: Colors.black54),
                    ),
                  ],
                );
  }
}