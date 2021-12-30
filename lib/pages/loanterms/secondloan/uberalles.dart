import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/pages/loanterms/failurecase.dart';
import 'package:saccoapp/pages/loanterms/successcase.dart';

import '../../profilepage.dart';

class UberAlles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'My loan',
            style: GoogleFonts.spartan(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black54),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Icon(
                  FontAwesomeIcons.userCircle,
                  color: Colors.black54,
                ),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: size.height * 0.6,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Icon(
                    FontAwesomeIcons.solidCheckCircle,
                    color: const Color(0xFF5113AA),
                    size: 45,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Text(
                      'We have received your loan application',
                      style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
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
                          'Ksh 1,000',
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
                          'Ksh 1,352',
                          style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w700,
                          ),
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
                      '*Please note that we may take up to 8 hours to process the loan. Please be patient and bear with us',
                      style: GoogleFonts.prompt(
                          fontWeight: FontWeight.w500, color: Colors.black45),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              width: size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FailureCase()));
                    },
                    child: Container(
                        height: 70,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xFF5113AA),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.times,
                                color: Colors.white,
                                size: 17,
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text('Failure',
                                  style: GoogleFonts.prompt(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white)),
                            ],
                          ),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SuccessCase()));
                    },
                    child: Container(
                        height: 70,
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                            color: const Color(0xFF5113AA),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.check,
                                color: Colors.white,
                                size: 17,
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Text('Success',
                                  style: GoogleFonts.prompt(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white)),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
