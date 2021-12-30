import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:saccoapp/pages/loanterms/firstloan/loanfirstkei.dart';
import 'package:saccoapp/pages/loanterms/fourthloan/loanfourthkei.dart';
import 'package:saccoapp/pages/loanterms/thirdloan/loanthreekei.dart';
import 'package:saccoapp/pages/loanterms/secondloan/loantwokei.dart';

import '../profilepage.dart';

class LoanOffers extends StatefulWidget {
  @override
  State<LoanOffers> createState() => _LoanOffersState();
}

class _LoanOffersState extends State<LoanOffers> {
  String selected = 'first';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final numberFormat = new NumberFormat("##,###.00#", "en_US");
    final TextStyle cardNumberStyle =
        GoogleFonts.openSans(fontSize: 20, fontWeight: FontWeight.w600);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Loan Offers',
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
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              // SizedBox(
              //   height: size.height * 0.05,
              // ),
              Text(
                'Swipe and tap to select a loan amount',
                style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.black54),
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'first';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            height: selected == 'first' ? 180 : 100,
                            width: selected == 'first' ? 180 : 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  selected == 'first'
                                      ? BoxShadow(
                                          blurRadius: 4,
                                          spreadRadius: 4,
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(3.0, 3.0))
                                      : BoxShadow(
                                          blurRadius: 0,
                                          spreadRadius: 0,
                                          color: Colors.transparent)
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                                color: selected == 'first'
                                    ? Colors.purpleAccent
                                    : Colors.purpleAccent.withOpacity(0.2)),
                            child: Center(
                                child: selected == 'first'
                                    ? Text(
                                        r'ksh' +
                                            " ${numberFormat.format(2000)}",
                                        style: cardNumberStyle)
                                    : Text(
                                        r'ksh' +
                                            " ${numberFormat.format(2000)}",
                                        style: cardNumberStyle.copyWith(
                                            fontSize: 12))),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'second';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            height: selected == 'second' ? 180 : 100,
                            width: selected == 'second' ? 180 : 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  selected == 'second'
                                      ? BoxShadow(
                                          blurRadius: 4,
                                          spreadRadius: 4,
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(3.0, 3.0))
                                      : BoxShadow(
                                          blurRadius: 0,
                                          spreadRadius: 0,
                                          color: Colors.transparent)
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                                color: selected == 'second'
                                    ? Colors.purpleAccent
                                    : Colors.purpleAccent.withOpacity(0.2)),
                            child: Center(
                                child: selected == 'second'
                                    ? Text(
                                        r'ksh' +
                                            " ${numberFormat.format(1000)}",
                                        style: cardNumberStyle)
                                    : Text(
                                        r'ksh' +
                                            " ${numberFormat.format(1000)}",
                                        style: cardNumberStyle.copyWith(
                                            fontSize: 12))),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'third';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            height: selected == 'third' ? 180 : 100,
                            width: selected == 'third' ? 180 : 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  selected == 'third'
                                      ? BoxShadow(
                                          blurRadius: 4,
                                          spreadRadius: 4,
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(3.0, 3.0))
                                      : BoxShadow(
                                          blurRadius: 0,
                                          spreadRadius: 0,
                                          color: Colors.transparent)
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                                color: selected == 'third'
                                    ? Colors.purpleAccent
                                    : Colors.purpleAccent.withOpacity(0.2)),
                            child: Center(
                                child: selected == 'third'
                                    ? Text(
                                        r'ksh' + " ${numberFormat.format(500)}",
                                        style: cardNumberStyle)
                                    : Text(
                                        r'ksh' + " ${numberFormat.format(500)}",
                                        style: cardNumberStyle.copyWith(
                                            fontSize: 12))),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 'fourth';
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            height: selected == 'fourth' ? 180 : 100,
                            width: selected == 'fourth' ? 180 : 100,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  selected == 'fourth'
                                      ? BoxShadow(
                                          blurRadius: 4,
                                          spreadRadius: 4,
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(3.0, 3.0))
                                      : BoxShadow(
                                          blurRadius: 0,
                                          spreadRadius: 0,
                                          color: Colors.transparent)
                                ],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                                color: selected == 'fourth'
                                    ? Colors.purpleAccent
                                    : Colors.purpleAccent.withOpacity(0.2)),
                            child: Center(
                                child: selected == 'fourth'
                                    ? Text(
                                        r'ksh' + " ${numberFormat.format(250)}",
                                        style: cardNumberStyle)
                                    : Text(
                                        r'ksh' + " ${numberFormat.format(250)}",
                                        style: cardNumberStyle.copyWith(
                                            fontSize: 12))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.12,
              ),
              GestureDetector(
                onTap: () {
                  if (selected == 'first') {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FirstKei()));
                  } else if (selected == 'second') {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TwoKei()));
                  }
                  else if (selected == 'third') {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoanThreeKei()));
                  }
                  else {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FourthKei()));
                  }
                },
                child: Container(
                  height: 50.0,
                  width: size.width * 0.85,
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                    shadowColor: Colors.pinkAccent.withOpacity(0.3),
                    color: const Color(0xFF5113AA),
                    elevation: 7.0,
                    child: Center(
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Trueno'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
