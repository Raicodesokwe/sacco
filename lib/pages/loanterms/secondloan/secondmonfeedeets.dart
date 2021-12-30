import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondMonFeeDeets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Fee Details',
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
                    'FEE',
                    style: GoogleFonts.prompt(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'AMOUNT',
                    style: GoogleFonts.prompt(
                        color: Colors.black, fontWeight: FontWeight.w600),
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
              padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
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
                    style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Equivalent interest rate',
                    style: GoogleFonts.prompt(),
                  ),
                  Text(
                    '35.2%',
                    style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Equivalent monthly interest rate',
                    style: GoogleFonts.prompt(fontSize: 13),
                  ),
                  Text(
                    '18.86%',
                    style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Equivalent APR',
                    style: GoogleFonts.prompt(fontSize: 13),
                  ),
                  Text(
                    '229.43%',
                    style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
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
              padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Late fees',
                    style: GoogleFonts.prompt(fontSize: 13),
                  ),
                  Text(
                    'Ksh 0',
                    style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
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
              padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mobile carrier charges',
                    style: GoogleFonts.prompt(fontSize: 13),
                  ),
                  Text(
                    'Check with \n your carrier',
                    style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 15.0),
              width: size.width * 0.8,
              child: Text(
                'Please note that charges from mobile money transfer providers are not included',
                style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w500, color: Colors.black45,fontSize: 13),
              ),
            )
          ],
        ),
      ),
    );
  }
}
