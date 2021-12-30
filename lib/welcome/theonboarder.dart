import 'package:flutter/widgets.dart';

import 'package:saccoapp/welcome/allaboard.dart';

class TheOnboarder with ChangeNotifier {
  


List<AllAboard> _contents = [
  AllAboard(
    title: 'Get your loan straight to Mpesa',
    image: 'assets/denithree.png',
    description: "Apply for a loan and get it in no time"
  ),
  AllAboard(
    title: 'Get your credit limit and shop anywhere',
    image: 'assets/bnpl.png',
    description: "Buy now pay later. No stress"
  ),
  AllAboard(
    title: 'Pay at your own pace',
    image: 'assets/pace.png',
    description: "Pay back your loan on your own terms "
  ),
];
List <AllAboard> get contents{
  return [..._contents];
}
}