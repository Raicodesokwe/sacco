import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/pagethree/totaldue.dart';
import 'package:saccoapp/bnpl/pagethree/tumonths.dart';

class RadioByTwo extends StatelessWidget {
  const RadioByTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TuMonths(),
                        Text(
                          ((namba * 1.352) / 2).toStringAsFixed(0),
                          style:
                              GoogleFonts.prompt(fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TotalDue(),
                        Text(
                          (namba * 1.352).toStringAsFixed(0),
                          style:
                              GoogleFonts.prompt(fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ],
                );
    });
  }
}