import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:saccoapp/pages/loanterms/loanoffers.dart';

class LoanVerify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _textFieldOtp({bool first = true, last}) {
      return Container(
        height: 85,
        child: AspectRatio(
          aspectRatio: 0.7,
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.purple),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Text(
                'Verify phone!',
                style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: Colors.black54),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text('Code sent to +254 708011405',
                    style: GoogleFonts.prompt(
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                        fontSize: 18)),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textFieldOtp(first: true, last: false),
                    _textFieldOtp(first: false, last: false),
                    _textFieldOtp(first: false, last: false),
                    _textFieldOtp(first: false, last: true),
                  ],
                ),
              ),
             
              SizedBox(
                height: size.height * 0.15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoanOffers()));
                },
                child: Container(
                  height: 50.0,
                  width: size.width * 0.85,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.pinkAccent.withOpacity(0.3),
                    color: const Color(0xFF5113AA),
                    elevation: 7.0,
                    child: Center(
                      child: const Text(
                        'Verify and login',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'Trueno'),
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
