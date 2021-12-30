import 'package:flutter/material.dart';
class InvitePage extends StatelessWidget {
  const InvitePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 23,left: 5,right: 5),
      child: Image.asset(
        'assets/invite.png',
        // height: size.height * 0.9,
        // width: size.width * 1,
      ),
    );
  }
}