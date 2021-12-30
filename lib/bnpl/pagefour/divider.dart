import 'package:flutter/material.dart';

class DiviShawn extends StatelessWidget {
  const DiviShawn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  Container(
              width: size.width * 0.8,
              child: Divider(
                color: Colors.black45,
              ));
  }
}