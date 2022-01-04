

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:saccoapp/navbar/main_bounce_tab_bar.dart';
import 'package:shimmer/shimmer.dart';

enum MobileVerificationState { SHOW_MOBILE_FORM_STATE, SHOW_OTP_FORM_STATE }

class PhoneSignupscreen extends StatefulWidget {
  @override
  State<PhoneSignupscreen> createState() => _PhoneSignupscreenState();
}

class _PhoneSignupscreenState extends State<PhoneSignupscreen> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;
  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  late String verificationId;

  bool showLoading = false;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });
    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        showLoading = false;
      });
      if (authCredential.user != null) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => MainBounceTabBar()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
  }

  getMobileFormWidget(context) {
    Size size = MediaQuery.of(context).size;

    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        if (!isKeyboard)
          Text('Enter Your Phone Number',
              style: GoogleFonts.prompt(
                  color: Colors.black54,
                  fontWeight: FontWeight.w900,
                  fontSize: 23)),
        SizedBox(
          height: size.height * 0.05,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
              'We\'ll send an SMS with a code to verify your phone number',
              style: GoogleFonts.prompt(
                  color: Colors.black45,
                  fontWeight: FontWeight.w700,
                  fontSize: 18)),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Container(
          width: size.width * 0.9,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              maxLength: 9,
              decoration: InputDecoration(
                prefix: Text('+254'),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.1,
        ),
        ElevatedButton(
          onPressed: () async {
            //  if(checkfields())
            setState(() {
              showLoading = true;
            });

            await _auth.verifyPhoneNumber(
                phoneNumber: '+254${phoneController.text}',
                verificationCompleted: (phoneAuthCredential) async {
                  setState(() {
                    showLoading = false;
                  });
                  // signInWithPhoneAuthCredential(phoneAuthCredential);
                },
                verificationFailed: (verificationFailed) async {
                  setState(() {
                    showLoading = false;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(verificationFailed.message.toString())));
                },
                codeSent: (verificationId, resendingToken) async {
                  setState(() {
                    showLoading = false;
                    currentState = MobileVerificationState.SHOW_OTP_FORM_STATE;
                    this.verificationId = verificationId;
                  });
                },
                codeAutoRetrievalTimeout: (verificationId) async {});
          },
          child: Text(
            'send',
            style: TextStyle(fontFamily: 'Trueno'),
          ),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              elevation: 8.0,
              shadowColor: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              textStyle:
                  const TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
              primary: const Color(0xFF5113AA),
              onPrimary: Colors.white),
        ),
        Spacer()
      ],
    );
  }

  getOtpFormWidget(context) {
    Size size = MediaQuery.of(context).size;
    final FocusNode _pinPutFocusNode = FocusNode();
    final BoxDecoration pinPutDecoration = BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.purpleAccent.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3)
            //changes position of shadow
            )
      ],
      //initialized at runtime and can only be ran fi a single time
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: const Color(0xFF5113AA)),
    );
    return Column(
      children: [
        Spacer(),
        Text(
          'Verify phone!',
          style: GoogleFonts.prompt(
              fontWeight: FontWeight.w700, fontSize: 25, color: Colors.black54),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text('Code sent to +254${phoneController.text}',
              style: GoogleFonts.prompt(
                  color: Colors.black45,
                  fontWeight: FontWeight.w700,
                  fontSize: 18)),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: PinPut(
            fieldsCount: 6,
            controller: otpController,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
            eachFieldWidth: 40,
            eachFieldHeight: 55,
            submittedFieldDecoration: pinPutDecoration,
            selectedFieldDecoration: pinPutDecoration,
            followingFieldDecoration: pinPutDecoration,
            pinAnimationType: PinAnimationType.fade,
            focusNode: _pinPutFocusNode,
            
          ),
        ),
       
        SizedBox(
          height: size.height * 0.1,
        ),
        ElevatedButton(
          onPressed: () async {
            PhoneAuthCredential phoneAuthCredential =
                PhoneAuthProvider.credential(
                    verificationId: verificationId,
                    smsCode: otpController.text);
            signInWithPhoneAuthCredential(phoneAuthCredential);
          },
          child: Text('verify',style: TextStyle(fontFamily: 'Trueno'),),
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              elevation: 8.0,
              shadowColor: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              textStyle:
                  const TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
              primary: const Color(0xFF5113AA),
              onPrimary: Colors.white),),
        Spacer()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(16),
      child: showLoading
          ? Center(
              child: Shimmer.fromColors(
                baseColor: Colors.deepPurpleAccent.withOpacity(0.3),
                highlightColor: Colors.deepPurpleAccent.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepPurpleAccent.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      width: size.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.deepPurpleAccent.withOpacity(0.5),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.deepPurpleAccent.withOpacity(0.5),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.deepPurpleAccent.withOpacity(0.5),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.deepPurpleAccent.withOpacity(0.5),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.deepPurpleAccent.withOpacity(0.5),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.deepPurpleAccent.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Container(
                      height: 70,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.deepPurpleAccent.withOpacity(0.5),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
              ? getMobileFormWidget(context)
              : getOtpFormWidget(context),
    ));
  }
}
