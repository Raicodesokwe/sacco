import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/pagesix/fopayments.dart';
import 'package:saccoapp/bnpl/pagesix/getnaitedates.dart';

import 'amounttext.dart';

class DiviThriFo extends StatelessWidget {
  const DiviThriFo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return Container(
          padding: const EdgeInsets.only(bottom: 10.0),
          width: size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FoPayments(),
              GetNaiteDates(),
              Column(
                children: [
                  AmountText(),
                  Text(
                    'Ksh ${((namba * 1.24) / 4).toStringAsFixed(0)}',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    'Ksh ${((namba * 1.24) / 4).toStringAsFixed(0)}',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    'Ksh ${((namba * 1.24) / 4).toStringAsFixed(0)}',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                  Text(
                    'Ksh ${((namba * 1.24) / 4).toStringAsFixed(0)}',
                    style: GoogleFonts.prompt(
                        fontWeight: FontWeight.w600, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        );
    });
  }
}