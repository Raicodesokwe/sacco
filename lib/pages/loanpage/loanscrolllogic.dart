import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/pages/loanpage/loanscroller.dart';

class LoanScrollLogic extends StatefulWidget {
  @override
  State<LoanScrollLogic> createState() => _LoanScrollLogicState();
}

class _LoanScrollLogicState extends State<LoanScrollLogic> {
  int currentIndex = 0;
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.99);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final contentsData = Provider.of<LoanScroller>(context).contents;
    return Container(
      height: size.height * 0.5,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.purpleAccent.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
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
                  left: 25.0,
                  right: 25.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      contentsData[i].image,
                      height: size.height * 0.3,
                    ),
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
