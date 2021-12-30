import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/navbar/main_bounce_tab_bar.dart';

//this error handler shall display all our errors neatly for us
class CreditHandler {
  Future<dynamic> creditDialog(BuildContext context) {
    return Platform.isIOS
        ? showCupertinoDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                backgroundColor: const Color(0xFFfce7fe),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                title: Text(
                  'Credit',
                  style: GoogleFonts.prompt(),
                ),
                content: Column(
                  children: [
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text(
                          'We\'ll inform you of your credit limit soon',
                          style: GoogleFonts.prompt(),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MainBounceTabBar()));
                              },
                              child: Text(
                                'Ok',
                                style: GoogleFonts.prompt(
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                //minimum space leftover after children have occupied the space
              );
            })
        : showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return AlertDialog(
                backgroundColor: const Color(0xFFfce7fe),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                title: Text(
                  'Credit',
                  style: GoogleFonts.prompt(),
                ),
                content: Column(
                  children: [
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text(
                          'We\'ll inform you of your credit limit soon',
                          style: GoogleFonts.prompt(),
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MainBounceTabBar()));
                              },
                              child: Text(
                                'Ok',
                                style: GoogleFonts.prompt(
                                    color: const Color(0xFF5113AA),
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    )
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                //minimum space leftover after children have occupied the space
              );
            });
    //displays ios style dialog above contents of the app
    //it takes a builder that builds a cupertinoalertdialog widget
    //the content below the dialog is dimmed
    //we use stateful if dialog needs to update dynamically
  }
  //buildcontext handles location of a widget in a widget tree
}
