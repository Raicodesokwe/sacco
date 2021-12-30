import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:saccoapp/pages/loanapplication/loanform.dart';

import 'loanscrolllogic.dart';
class LoanWidget extends StatelessWidget {
  const LoanWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            LoanScrollLogic(),
            SizedBox(
              height: size.height * 0.07,
            ),
            GestureDetector(
              onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoanForm()));
                },
              child: Container(
                  height: 70,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color:const Color(0xFFBC53FA),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: Text('Start Your Loan Application',
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w800, fontSize: 18,color: Colors.white)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}