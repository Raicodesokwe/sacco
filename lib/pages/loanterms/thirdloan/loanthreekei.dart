import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:saccoapp/pages/loanterms/thirdloan/alternativefacts.dart';
import 'package:saccoapp/pages/loanterms/thirdloan/loaninitialdetail.dart';
import 'package:saccoapp/pages/loanterms/thirdloan/thirdcase.dart';
import 'package:saccoapp/pages/loanterms/thirdloan/thirdmonthly.dart';
import 'package:saccoapp/pages/loanterms/thirdloan/thirdweekly.dart';

enum InterestTerms { firstoption, secondOption, thirdOption }

class LoanThreeKei extends StatefulWidget {
  @override
  State<LoanThreeKei> createState() => _LoanThreeKeiState();
}

class _LoanThreeKeiState extends State<LoanThreeKei> {
  final TextEditingController _interestfirstcontroller =
      new TextEditingController();
  InterestTerms? _character;
  final TextEditingController _onecontroller = new TextEditingController();
  final TextEditingController _twocontroller = new TextEditingController();
  final TextEditingController _threecontroller = new TextEditingController();
  final TextEditingController _fourcontroller = new TextEditingController();
  final _dwanzee = new GlobalKey<FormState>();

  checkFields() {
    final form = _dwanzee.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    void _addTerms() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return _daBottomSheet();
          });
    }

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
        ),
        body: SingleChildScrollView(
            reverse: true,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Select your loan repayment terms',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w700,
                        fontSize: 19,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    height: 90,
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
                            'Principal',
                            style: GoogleFonts.prompt(
                                color: Colors.black54,
                                fontSize: 17,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(r'ksh' + " ${numberFormat.format(500)}",
                              style: cardNumberStyle),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  GestureDetector(
                    onTap: () => _addTerms(),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Form(
                        key: _dwanzee,
                        child: AbsorbPointer(
                          child: TextFormField(
                            controller: _interestfirstcontroller,
                            validator: (value) => value!.isEmpty
                                ? 'Loan terms are required'
                                : null,
                            decoration: InputDecoration(
                                icon: Icon(
                                  FontAwesomeIcons.angleDoubleDown,
                                  color: const Color(0xFFBC53FA),
                                ),
                                hintText: "Select loan terms",
                                hintStyle: GoogleFonts.prompt(),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Row(
                      children: [
                        Flexible(
                            child: AbsorbPointer(
                          child: TextFormField(
                            controller: _onecontroller,
                            decoration: InputDecoration(
                                labelStyle: GoogleFonts.prompt(),
                                border: InputBorder.none),
                          ),
                        )),
                        SizedBox(
                          width: size.width * 0.4,
                        ),
                        Flexible(
                            child: AbsorbPointer(
                          child: TextFormField(
                              controller: _twocontroller,
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.prompt(),
                                  border: InputBorder.none)),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Row(
                      children: [
                        Flexible(
                            child: AbsorbPointer(
                          child: TextFormField(
                            controller: _threecontroller,
                            decoration: InputDecoration(
                                labelStyle: GoogleFonts.prompt(),
                                border: InputBorder.none),
                          ),
                        )),
                        SizedBox(
                          width: size.width * 0.4,
                        ),
                        Flexible(
                            child: AbsorbPointer(
                          child: TextFormField(
                              controller: _fourcontroller,
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.prompt(),
                                  border: InputBorder.none)),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (checkFields()) if (_interestfirstcontroller.text ==
                              '28 days\n 1 monthly payment of KSH588' ||
                          _interestfirstcontroller.text ==
                              '28 days\n 4 weekly payments of KSH147') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ThirdCase()));
                      }else {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AlternativeFacts()));
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
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (checkFields()) if (_interestfirstcontroller.text ==
                          '28 days\n 1 monthly payment of KSH588') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoanInitialDetail()));
                      } else if (_interestfirstcontroller.text ==
                          '28 days\n 4 weekly payments of KSH147') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ThirdWeekly()));
                      } else if (_interestfirstcontroller.text ==
                          '62 days\n 2 monthly payments of KSH338') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ThirdMonthly()));
                      }
                    },
                    child: Container(
                      width: size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'View Loan Details',
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
                ],
              ),
            )));
  }

  StatefulBuilder _daBottomSheet() {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setModalState) {
      Size size = MediaQuery.of(context).size;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            tileColor: const Color(0xFFfce7fe),
            title: Text(
              'Select Your terms',
              style: GoogleFonts.prompt(fontWeight: FontWeight.w900),
            ),
            trailing: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  FontAwesomeIcons.windowClose,
                )),
          ),
          RadioListTile<InterestTerms>(
            title: Text(
              '28 days',
              style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
            ),
            activeColor: const Color(0xFF5113AA),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '1 monthly payment',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: size.width * 0.27,
                    ),
                    Text(
                      '588',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Total Amount Due',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: size.width * 0.29,
                    ),
                    Text(
                      '588',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ],
            ),
            value: InterestTerms.firstoption,
            groupValue: _character,
            onChanged: (InterestTerms? value) {
              setModalState(() {
                _character = value;
                Navigator.pop(context);
                _interestfirstcontroller.text =
                    '28 days\n 1 monthly payment of KSH588';
                _onecontroller.text = 'Interest';
                _twocontroller.text = 'Ksh 88';
                _threecontroller.text = 'Total due';
                _fourcontroller.text = 'Ksh588';
              });
            },
          ),
          RadioListTile<InterestTerms>(
            title: Text(
              '28 days',
              style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
            ),
            activeColor: const Color(0xFF5113AA),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '4 weekly payments',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: size.width * 0.27,
                    ),
                    Text(
                      '147',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Total Amount Due',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: size.width * 0.29,
                    ),
                    Text(
                      '588',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ],
            ),
            value: InterestTerms.secondOption,
            groupValue: _character,
            onChanged: (InterestTerms? value) {
              setModalState(() {
                _character = value;
                Navigator.pop(context);
                _interestfirstcontroller.text =
                    '28 days\n 4 weekly payments of KSH147';
                _onecontroller.text = 'Interest';
                _twocontroller.text = 'Ksh 88';
                _threecontroller.text = 'Total due';
                _fourcontroller.text = 'Ksh588';
              });
            },
          ),
          RadioListTile<InterestTerms>(
            title: Text(
              '62 days',
              style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
            ),
            activeColor: const Color(0xFF5113AA),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '2 monthly payments',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: size.width * 0.25,
                    ),
                    Text(
                      '338',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Total Amount Due',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: size.width * 0.29,
                    ),
                    Text(
                      '676',
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ],
            ),
            value: InterestTerms.thirdOption,
            groupValue: _character,
            onChanged: (InterestTerms? value) {
              setModalState(() {
                _character = value;
                Navigator.pop(context);
                _interestfirstcontroller.text =
                    '62 days\n 2 monthly payments of KSH338';
                _onecontroller.text = 'Interest';
                _twocontroller.text = 'Ksh 176';
                _threecontroller.text = 'Total due';
                _fourcontroller.text = 'Ksh676';
              });
            },
          ),
        ],
      );

      // _buildBottomNav(context);
    });
  }
}
