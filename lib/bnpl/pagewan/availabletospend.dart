import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';

class AvailableToSpend extends StatelessWidget {
  const AvailableToSpend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberFormat = new NumberFormat("##,###.00#", "en_US");
    final TextStyle cardNumberStyle =
        GoogleFonts.openSans(fontSize: 15, fontWeight: FontWeight.w600);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        child: Row(
          children: [
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFfce7fe),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Center(
                    child: Icon(
                  FontAwesomeIcons.rocket,
                  color: Colors.black,
                ))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Provider.of<FirstNotifier>(context, listen: false).credValue.toString(),style: cardNumberStyle,),
                // Text(
                //     r'ksh' +
                //         "${numberFormat.format(Provider.of<FirstNotifier>(context, listen: false).credValue.toString())}",
                //     style: cardNumberStyle),
                Text(
                  'Available to spend',
                  style: GoogleFonts.prompt(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
