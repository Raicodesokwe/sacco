import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetTresMontes extends StatelessWidget {
  const GetTresMontes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      String getCurrentDate() {
    var date = DateTime.now().add(Duration(days: 30)).toString();

    var dateParse = DateTime.parse(date);

    var formattedDate = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
    return formattedDate.toString();
  }
  String getSecondMonth() {
    var date = DateTime.now().add(Duration(days: 60)).toString();

    var dateParse = DateTime.parse(date);

    var formattedDate = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
    return formattedDate.toString();
  }
  String getThirdMonth() {
    var date = DateTime.now().add(Duration(days: 90)).toString();

    var dateParse = DateTime.parse(date);

    var formattedDate = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
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
                  Text(
                    getSecondMonth(),
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    getThirdMonth(),
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                ]);
  }
}