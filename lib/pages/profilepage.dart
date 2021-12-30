import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'My Account',
            style: GoogleFonts.spartan(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black54),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: size.height * 0.7,
          width: size.width * 0.8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFfce7fe),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.userCircle,
                          size: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Profile',
                          style: GoogleFonts.prompt(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        Text(
                          'Edit your personal information',
                          style: GoogleFonts.prompt(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(FontAwesomeIcons.angleRight,color: Colors.black38,)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFfce7fe),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.solidMoneyBillAlt,
                          size: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Financial Accounts',
                          style: GoogleFonts.prompt(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        Text(
                          'Manage your mobile money accounts',
                          style: GoogleFonts.prompt(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    Icon(FontAwesomeIcons.angleRight,color: Colors.black38,)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFfce7fe),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.star,
                          size: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Promotions',
                          style: GoogleFonts.prompt(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        Text(
                          'Add a promotion code',
                          style: GoogleFonts.prompt(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Icon(FontAwesomeIcons.angleRight,color: Colors.black38,)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFfce7fe),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.history,
                          size: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'History',
                          style: GoogleFonts.prompt(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        Text(
                          'Your previous activity on saccoapp',
                          style: GoogleFonts.prompt(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(FontAwesomeIcons.angleRight,color: Colors.black38,)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFfce7fe),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.cogs,
                          size: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'App Settings',
                          style: GoogleFonts.prompt(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        Container(
                          width: size.width*0.5,
                          child: Text(
                            'Language,sign in,security settings and notification settings',
                            style: GoogleFonts.prompt(
                                fontSize: 11, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(FontAwesomeIcons.angleRight,color: Colors.black38,)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFfce7fe),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.envelopeOpenText,
                          size: 15,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Help',
                          style: GoogleFonts.prompt(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                        Text(
                          'Customer care and FAQs',
                          style: GoogleFonts.prompt(
                              fontSize: 11, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(FontAwesomeIcons.angleRight,color: Colors.black38,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
