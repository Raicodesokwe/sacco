import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/bnplview.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/provider/doubleprovider.dart';
import 'package:saccoapp/pages/loanpage/loanscroller.dart';
import 'package:saccoapp/signs/signup/provider/stringprovider.dart';
import 'package:saccoapp/streambuilder/streambuilder.dart';
import 'package:saccoapp/welcome/theonboarder.dart';
import 'package:saccoapp/welcome/welcomeonboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isviewed;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoanScroller(),
        ),
        ChangeNotifierProvider(
          create: (_) => TheOnboarder(),
        ),
        ChangeNotifierProvider(
          create: (_) => BnplView(),
        ),
        ChangeNotifierProvider(
          create: (_) => FirstNotifier(),
        ),
        ChangeNotifierProvider(
          create: (_) => StringProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'dojo',
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: const Color(0xFFfce7fe),
            appBarTheme: AppBarTheme(elevation: 0)),
        home:isviewed != 0 ? WelcomeOnBoard() : InitiaLizer(),
       
      ),
    );
  }
}
