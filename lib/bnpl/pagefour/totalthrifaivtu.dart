import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/pagethree/totaldue.dart';

class TotalThriFaivTu extends StatelessWidget {
  const TotalThriFaivTu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return Container(
          padding: const EdgeInsets.only(top: 10.0),
          width: size.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalDue(),
              Text(
                'Ksh ${(namba * 1.352).toStringAsFixed(0)}',
                style: GoogleFonts.prompt(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        );
    });
  }
}