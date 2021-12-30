import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/welcome/signscreen.dart';
import 'package:saccoapp/welcome/theonboarder.dart';
import 'package:shared_preferences/shared_preferences.dart';


class WelcomeOnBoard extends StatefulWidget {


  @override
  _WelcomeOnBoardState createState() => _WelcomeOnBoardState();
}

class _WelcomeOnBoardState extends State<WelcomeOnBoard> {
    int currentIndex = 0;
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.99);
       _storeOnboardInfo() async {
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    print(prefs.getInt('onBoard'));
  }
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    final contentsData = Provider.of<TheOnboarder>(context).contents;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: PageView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return ChangeNotifierProvider.value(
              value: contentsData[i],
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      contentsData[i].image,
                      height: size.height * 0.6,
                    ),
                    Text(
                      contentsData[i].title,
                      style: GoogleFonts.prompt(fontWeight: FontWeight.w800,fontSize: 20),
                    ),
                    SizedBox(height: size.height * 0.01,),
                    Text(
                      contentsData[i].description,
                      style: GoogleFonts.prompt(),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            contentsData.length, (index) => buildDot(index)),
                      ),
                    )
                  ],
                ),
              ));
        },
        itemCount: contentsData.length,
      ),
      ),
      bottomSheet: Container(
        height: Platform.isIOS ? 70 : 60,
        padding: EdgeInsets.symmetric(horizontal: 20),
      color: const Color(0xFFfce7fe),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                   _storeOnboardInfo();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignScreen(
                         
                          )));
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
            InkWell(
                onTap: () {
                   _storeOnboardInfo();
                  if (currentIndex == contentsData.length - 1) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignScreen(
                            // register: newRegister
                            )));
                  }
                  _pageController.nextPage(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.bounceIn);
                },
                child: Text(
                  currentIndex == contentsData.length - 1 ? 'Sign Up' : 'Next',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
  Container buildDot(int index) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Colors.black),
    );
  }
}