import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/storefront.dart';
import 'package:saccoapp/bnpl/pagetwo/continuetext.dart';
import 'package:saccoapp/pages/profilepage.dart';
import 'package:saccoapp/shop/qr.dart';

class SecondShopPage extends StatelessWidget {
  final Barcode shopname;
  const SecondShopPage(this.shopname);

  @override
  Widget build(BuildContext context) {
    final _dombolo = new GlobalKey<FormState>();
    checkFields() {
      final form = _dombolo.currentState;
      if (form!.validate()) {
        form.save();
        return true;
      }
      return false;
    }

    String? validateAmount(String value) {
      if (double.parse(value) < 250) {
        return 'Amount cannot be less than Ksh250';
      } else if (double.parse(value) >
          Provider.of<FirstNotifier>(context, listen: false).credValue) {
        return 'Amount can\'t be greater than your credit limit';
      }
      return null;
    }
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Pay with Dojo',
            style: GoogleFonts.spartan(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black54),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Icon(
                  FontAwesomeIcons.userCircle,
                  color: Colors.black54,
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Text('Start shopping at',
                  style: GoogleFonts.prompt(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.black)),
              SizedBox(
                height: size.height * 0.025,
              ),
              Text(shopname.code!,
                  style: GoogleFonts.prompt(
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                      color: Colors.black)),
              SizedBox(
                height: size.height * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'You\'ll only be charged for what you end up spending',
                  style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  'Enter the amount you wish to pay',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.prompt(fontSize: 18),
                ),
              ),
              SizedBox(
                height: size.height * 0.025,
              ),
              Container(
                  width: size.width * 0.8,
                  child: Row(
                    children: [
                      Flexible(
                      flex: 1,
                      child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color:  const Color(0xFFBC53FA),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Center(
                            child: Text('KSH',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.prompt(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black)),
                          ))),
                          Flexible(
                    flex: 5,
                    child: Form(
                      key: _dombolo,
                      child: TextFormField(
                        onChanged: (value) {
                          Provider.of<FirstNotifier>(context, listen: false)
                              .changeVal(double.parse(value));
                        },
                        validator: (value) => value!.isEmpty
                            ? 'Amount is required'
                            : validateAmount(value),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ],
                      ),
                    ),
                  ),
                    ],
                  )),
                   SizedBox(
              height: size.height * 0.06,
            ),
            MaterialButton(
              onPressed: () {
                if (checkFields())
                 Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => StoreFront()));
              },
              child: ContinueText(),
              color: const Color(0xFF5113AA),
              height: 70,
              minWidth: size.width *0.5,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 8,
            ),
            ],
          ),
        )),
      ),
    );
  }
}
