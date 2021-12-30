import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/pagethree/twelofmonths.dart';

import 'totaldue.dart';

class YearInstall extends StatelessWidget {
  const YearInstall({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TwelofMonths(),
                        Text(
                          ((namba * 1.24) / 12).toStringAsFixed(0),
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
                          (namba * 1.24).toStringAsFixed(0),
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