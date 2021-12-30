import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/pages/loanterms/firstloan/loanfeedetails.dart';

class LoanDeets extends StatelessWidget {
  String getCurrentDate() {
    var date = DateTime.now().add(Duration(days: 28)).toString();

    var dateParse = DateTime.parse(date);

    var formattedDate = "${dateParse.day}/${dateParse.month}/${dateParse.year}";
    return formattedDate.toString();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Loan Details & Schedule',
            style: GoogleFonts.spartan(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black54),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Principal',
                    style: GoogleFonts.prompt(),
                  ),
                  Text(
                    'Ksh 2,000',
                    style: GoogleFonts.prompt(),
                  ),
                ],
              ),
            ),
            Container(
                width: size.width * 0.8,
                child: Divider(
                  color: Colors.black45,
                )),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Interest',
                    style: GoogleFonts.prompt(),
                  ),
                  Text(
                    'Ksh 352',
                    style: GoogleFonts.prompt(),
                  ),
                ],
              ),
            ),
            Container(
                width: size.width * 0.8,
                child: Divider(
                  color: Colors.black45,
                )),
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount Due',
                    style: GoogleFonts.prompt(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Ksh 2,352',
                    style: GoogleFonts.prompt(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoanFeeDetails()));
              },
              child: Container(
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View Fee Details',
                      style: GoogleFonts.prompt(
                          color: Colors.black54,
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
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              'Repayment schedule*',
              style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                  fontSize: 18),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'PAYMENT',
                        style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '1 of 1',
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ],
                  ),
                  Column(
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
                  ),
                  Column(
                    children: [
                      Text(
                        'AMOUNT',
                        style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Ksh 2,352',
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                width: size.width * 0.8,
                child: Divider(
                  color: Colors.black45,
                )),
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              width: size.width * 0.8,
              child: Text(
                '*Dates are estimated. Exact dates will be based on the date the loan is disbursed.',
                style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w500, color: Colors.black45),
              ),
            )
          ],
        ),
      ),
    );
  }
}
