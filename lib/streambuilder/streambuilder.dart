import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:saccoapp/navbar/main_bounce_tab_bar.dart';
import 'package:saccoapp/streambuilder/admintest.dart';
import 'package:saccoapp/welcome/signscreen.dart';

class InitiaLizer extends StatefulWidget {
  @override
  _InitiaLizerState createState() => _InitiaLizerState();
}

class _InitiaLizerState extends State<InitiaLizer> {
  String role='user';
 
 
  @override
  void initState() {
    
    super.initState();
   _checkRole();
  }

  void _checkRole()async {
    User? user= FirebaseAuth.instance.currentUser;
final DocumentSnapshot snap= await FirebaseFirestore.instance.collection('phone').doc(user!.uid).get();
setState(() {
  role=snap['role'];
});
// if(role == 'user'){
//   navigateNext(MainBounceTabBar());
// }else if(role == 'admin'){
//   navigateNext(AdminTest());
// }else{
//   navigateNext(SignScreen());
// }
  }
  // void navigateNext(Widget route){
  //   Timer(Duration(milliseconds: 500), (){
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) =>route));
  //   });

  // }

  @override 
  Widget build(BuildContext context) {
    return role =='user'?MainBounceTabBar():
    role=='admin'?AdminTest():SignScreen();
    //  _user==null?SignScreen():MainBounceTabBar();
  }
}
