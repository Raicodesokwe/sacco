import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


import 'package:saccoapp/bnpl/bnplshopping.dart';


import 'package:saccoapp/pages/invitepage.dart';

import 'package:saccoapp/pages/loanpage/loanwidget.dart';
import 'package:saccoapp/pages/profilepage.dart';

import 'bouncetabbar.dart';
import '../pages/homepage.dart';

class MainBounceTabBar extends StatefulWidget {
  @override
  _MainBounceTabBarState createState() => _MainBounceTabBarState();
}

class _MainBounceTabBarState extends State<MainBounceTabBar> {
  int _currentIndex = 0;

  double spacing = 0.0;
  double aspectRatio = 0.5;
  @override
  Widget build(BuildContext context) {
   
    Size size = MediaQuery.of(context).size;
    final numberFormat = new NumberFormat("##,###.00#", "en_US");
    final TextStyle cardNumberStyle =
        GoogleFonts.openSans(fontSize: 25, fontWeight: FontWeight.w600);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Dojo',
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
      extendBody: true,
      body: SingleChildScrollView(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            HomePage(
                size: size,
                numberFormat: numberFormat,
                cardNumberStyle: cardNumberStyle),
            LoanWidget(size: size),
            BnplShopping(size: size, ),
            
          ],
        ),
      ),
      bottomNavigationBar: BounceTabBar(
        initialIndex: 0,
        onTabChanged: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: const Color(0xFFBC53FA),
        items: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.home,
                color: Colors.white,
              ),
              Text(
                'home',
                style: GoogleFonts.prompt(color: Colors.white),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.moneyBill, color: Colors.white),
              Text(
                'loans',
                style: GoogleFonts.prompt(color: Colors.white),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.shoppingCart, color: Colors.white),
              Text(
                'shop',
                style: GoogleFonts.prompt(color: Colors.white),
              )
            ],
          ),
         
        ],
      ),
    );
  }
}

