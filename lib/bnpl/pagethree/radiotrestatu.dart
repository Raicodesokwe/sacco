import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/pagethree/totaldue.dart';
import 'package:saccoapp/bnpl/pagethree/tresmonths.dart';

class RadioTresTatu extends StatelessWidget {
  const RadioTresTatu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TresMonths(),
                        Text(
                          ((namba * 1.36) / 3).toStringAsFixed(0),
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
                          (namba * 1.36).toStringAsFixed(0),
                          style:
                              GoogleFonts.prompt(fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ],
                );});
  }
}