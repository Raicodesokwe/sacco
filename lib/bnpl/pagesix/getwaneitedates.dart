import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetWanEiteDates extends StatelessWidget {
  const GetWanEiteDates({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     String getCurrentDate() {
      var date = DateTime.now().add(Duration(days: 45)).toString();

      var dateParse = DateTime.parse(date);

      var formattedDate =
          "${dateParse.day}/${dateParse.month}/${dateParse.year}";
      return formattedDate.toString();
    }

    String getWeekTwo() {
      var date = DateTime.now().add(Duration(days: 90)).toString();

      var dateParse = DateTime.parse(date);

      var formattedDate =
          "${dateParse.day}/${dateParse.month}/${dateParse.year}";
      return formattedDate.toString();
    }

    String getWeekThree() {
      var date = DateTime.now().add(Duration(days: 135)).toString();

      var dateParse = DateTime.parse(date);

      var formattedDate =
          "${dateParse.day}/${dateParse.month}/${dateParse.year}";
      return formattedDate.toString();
    }

    String getWeekFour() {
      var date = DateTime.now().add(Duration(days: 180)).toString();

      var dateParse = DateTime.parse(date);

      var formattedDate =
          "${dateParse.day}/${dateParse.month}/${dateParse.year}";
      return formattedDate.toString();
    }
    return  Column(
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
                  Text(
                    getWeekTwo(),
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    getWeekThree(),
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    getWeekFour(),
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                ],
              );
  }
}