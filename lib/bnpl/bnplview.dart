import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:saccoapp/bnpl/bnpllist.dart';

class BnplView with ChangeNotifier {
  List<BnplList> _contents = [
    BnplList(
      title: 'Naivas',
      image: 'assets/denithree.png',
    ),
    BnplList(
      title: 'Quickmart',
      image: 'assets/bnpl.png',
    ),
    BnplList(
      title: 'Carrefour',
      image: 'assets/pace.png',
    ),
    BnplList(
      title: 'Jumia',
      image: 'assets/denithree.png',
    ),
    BnplList(
      title: 'Kilimall',
      image: 'assets/bnpl.png',
    ),
    BnplList(
      title: 'Aliexpress',
      image: 'assets/pace.png',
    ),
    BnplList(
      title: 'Jumia eats',
      image: 'assets/denithree.png',
    ),
    BnplList(
      title: 'Glovo',
      image: 'assets/bnpl.png',
    ),
    BnplList(
      title: 'Skygarden',
      image: 'assets/pace.png',
    ),
  ];
  // List<BnplList> get contents {
  //   return [..._contents];
  // }

  String _searchString = '';
  UnmodifiableListView<BnplList> get shops=>_searchString.isEmpty?
  UnmodifiableListView(_contents):
  UnmodifiableListView(
    _contents.where((shop) => shop.title.toLowerCase().contains(_searchString))
  );

  // get theSearch {
  //   if (_searchString.isEmpty) {
  //     return contents;
  //   } else {
  //     return contents.where((shop) => shop.title.contains(_searchString));
  //   }
  // }
  
  void changeSearchString(String searchString) {
    _searchString = searchString;
    print(_searchString);
    notifyListeners();
  }
}
