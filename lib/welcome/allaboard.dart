import 'package:flutter/material.dart';

class AllAboard with ChangeNotifier{
   String image;
  String title;
  String description;

  AllAboard({required this.image, required this.title, required this.description});
}