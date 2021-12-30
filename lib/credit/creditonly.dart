import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/credit/creditaccepted.dart';




class CreditOnly extends StatelessWidget {
  final String legalName;
  final String id;
  final String dob;
  CreditOnly(this.legalName,this.id,this.dob);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Access Your Account',
            style: GoogleFonts.spartan(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black54),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.8,
                child: Text(
                  'Please confirm that the National ID number you entered is correct',
                  style: GoogleFonts.prompt(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Colors.black54),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width * 0.8,
                height: size.height * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.purpleAccent.withOpacity(0.2)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'National ID Number',
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.black54),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Text(
                        id,
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.4,
              ),
              Container(
                width: size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
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
                                Text('Incorrect',
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
                            builder: (context) => CreditAccepted(legalName,id,dob)));
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
                                Text('Correct',
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
      ),
    );
  }
}
