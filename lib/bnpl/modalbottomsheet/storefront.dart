import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/pagekwanza.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StoreFront extends StatefulWidget {
  @override
  State<StoreFront> createState() => _StoreFrontState();
}

class _StoreFrontState extends State<StoreFront> {
  @override
  Widget build(BuildContext context) {
    void _addTerms() {
      showModalBottomSheet(
        isScrollControlled: true,
          context: context,
          builder: (context) {
            return _daBottomSheet();
          });
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFfce7fe),
        ),
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://www.jumia.co.ke/',
        ),
        bottomSheet: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(color: const Color(0xFFfce7fe)),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 100),
              child: ElevatedButton(
                onPressed: () => _addTerms(),
                child: Text(
                  'Pay',
                  style: GoogleFonts.prompt(
                      fontWeight: FontWeight.w600, fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF5113AA),
                    shape: StadiumBorder(),
                    elevation: 8,
                    shadowColor: Colors.purpleAccent),
              )),
        ),
      ),
    );
  }

  _daBottomSheet() {
    
      final numberFormat = new NumberFormat("##,###.00#", "en_US");
      final TextStyle cardNumberStyle =
          GoogleFonts.openSans(fontSize: 15, fontWeight: FontWeight.w600);

      return PageKwanza(numberFormat: numberFormat, cardNumberStyle: cardNumberStyle);
    
  }
}


