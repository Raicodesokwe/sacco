import 'package:flutter/widgets.dart';
import 'package:saccoapp/pages/loanpage/loanpagescroll.dart';

class LoanScroller with ChangeNotifier {
  List<LoanPageScroll> _contents = [
    LoanPageScroll(
        image: 'assets/denione.png',
        description:
            "Get approved for loans starting from Ksh 100 up to Ksh 20,000"),
    LoanPageScroll(
        image: 'assets/denitwo.png',
        description: "Low interest rates, no hidden fees "),
    LoanPageScroll(
        image: 'assets/denithree.png',
        description: "Loans directly into your account within hours "),
  ];
  List<LoanPageScroll> get contents {
    return [..._contents];
  }
}
