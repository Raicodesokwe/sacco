import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saccoapp/pages/profilepage.dart';
import 'package:saccoapp/shop/qr.dart';

class StoRes extends StatelessWidget {
  const StoRes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Shop in the store',
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Text('Start shopping in store',
                style: GoogleFonts.prompt(
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                    color: Colors.black54)),
            SizedBox(
              height: size.height * 0.05,
            ),
            Image.asset(
              "assets/qr.png",
              width: size.width * 0.9,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => KiuAr()));
              },
              child: Container(
                  height: 70,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      color: const Color(0xFF5113AA),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: Text('Proceed',
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.white)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
