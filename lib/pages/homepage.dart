import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/pages/loanapplication/loanform.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.size,
    required this.numberFormat,
    required this.cardNumberStyle,
  }) : super(key: key);

  final Size size;
  final NumberFormat numberFormat;
  final TextStyle cardNumberStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              height: size.height *0.13,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black45.withOpacity(0.5), width: 1.0),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LOAN BALANCE',
                      style: GoogleFonts.prompt(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(r'ksh' + "${numberFormat.format(0.0)}",
                        style: cardNumberStyle),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Container(
              height: 90,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        FontAwesomeIcons.moneyBill,
                        size: 15,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoanForm()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 18),
                        width: size.width * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'sign up here to get a dojo loan today!',
                              style: GoogleFonts.prompt(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            ),
                            Text(
                              'Apply with just a few taps',
                              style: GoogleFonts.prompt(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Container(
              height: size.height *0.13,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black45.withOpacity(0.5), width: 1.0),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CREDIT LIMIT',
                      style: GoogleFonts.prompt(
                          color: Colors.black54,
                          fontSize: 14,
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(Provider.of<FirstNotifier>(context, listen: false).credValue.toString(),
                        style: cardNumberStyle),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Container(
              height: 90,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        FontAwesomeIcons.shoppingCart,
                        size: 15,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 18),
                      width: size.width * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'sign up here to get your credit limit',
                            style: GoogleFonts.prompt(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87),
                          ),
                          Text(
                            'Buy now, pay later',
                            style: GoogleFonts.prompt(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
