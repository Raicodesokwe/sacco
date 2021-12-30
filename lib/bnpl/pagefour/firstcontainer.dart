import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/pagefour/princee.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return  Container(
              padding: const EdgeInsets.only(bottom: 10.0),
              width: size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrinCee(),
                  Text(
                    'Ksh ${namba.toStringAsFixed(0)}',
                    style: GoogleFonts.prompt(),
                  ),
                ],
              ),
            );});
  }
}