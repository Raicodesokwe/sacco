import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/pagethree/totaldue.dart';

import 'mwezisix.dart';

class TheSixes extends StatelessWidget {
  const TheSixes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MweziSix(),
              Text(
                (namba * 1.24).toStringAsFixed(0),
                style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalDue(),
              Text(
                (namba * 1.24).toStringAsFixed(0),
                style: GoogleFonts.prompt(fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ],
      );
    });
  }
}
