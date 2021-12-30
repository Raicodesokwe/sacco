import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart' as Path;
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import 'package:saccoapp/pages/loanterms/loanoffers.dart';

class LoanAccepted extends StatefulWidget {
  final String legalName;
  final String id;
  final String dob;
  LoanAccepted(this.legalName, this.id, this.dob);
  @override
  State<LoanAccepted> createState() => _LoanAcceptedState();
}

class _LoanAcceptedState extends State<LoanAccepted> {
  double progress = 0.0;
  File? file;
  UploadTask? task;
  final _dari = GlobalKey<FormState>();
  checkFields() {
    final form = _dari.currentState;
    if (form!.validate()) {
      FocusScope.of(context).unfocus();
      if (file == null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Please enter a valid image!!!'),
          backgroundColor: Colors.red,
        ));

        return null;
        //this avoids the next part being executed
      }
      form.save();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final fileName =
        file != null ? Path.basename(file!.path) : 'No File Selected';

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: size.width * 0.8,
                child: Text(
                  'Upload your Mpesa or Bank statements',
                  style: GoogleFonts.prompt(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                )),
            SizedBox(
              height: size.height * 0.05,
            ),
            GestureDetector(
                onTap: () async {
                  try {
                    FilePickerResult? result = await FilePicker.platform
                        .pickFiles(allowMultiple: true);
                    if (result == null) return;
                    final path = result.files.single.path!;
                    setState(() => file = File(path));
                    final fileName = Path.basename(file!.path);
                    final destination = 'files/$fileName';

                    // Uint8List? file = result.files.first.path;
                    // String fileName = result.files.first.name;

                    UploadTask task = FirebaseStorage.instance
                        .ref()
                        .child(destination)
                        .putFile(file!);

                    task.snapshotEvents.listen((event) {
                      setState(() {
                        progress = ((event.bytesTransferred.toDouble() /
                                    event.totalBytes.toDouble()) *
                                100)
                            .roundToDouble();
                        print(progress);
                      });
                    });
                    String uid = FirebaseAuth.instance.currentUser!.uid;
                    final snap = await task.whenComplete(() => {});
                    final urlDownload = await snap.ref.getDownloadURL();

                    await FirebaseFirestore.instance
                        .collection('loans')
                        .doc(uid)
                        .set({
                      'legal_name': widget.legalName,
                      'Id_number': widget.id,
                      'Date_of_birth': widget.dob,
                      'image_url': urlDownload
                    });
                  } on FirebaseException catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(e.message.toString())));
                  }
                },
                child: Container(
                    width: size.width * 0.8,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      FontAwesomeIcons.cloudDownloadAlt,
                      color: const Color(0xFF5113AA),
                      size: 50,
                    ))),
            SizedBox(
              height: size.height * 0.05,
            ),
            Form(
              key: _dari,
              child: Text(
                fileName,
                style: GoogleFonts.prompt(),
              ),
            ),
            Container(
              width: size.width * 0.9,
              height: 50,
              child: LiquidLinearProgressIndicator(
                value: progress / 100,
                valueColor: AlwaysStoppedAnimation(const Color(0xFF5113AA)),
                backgroundColor: Colors.white,
                borderColor: Colors.purpleAccent,
                borderWidth: 5.0,
                borderRadius: 12.0,
                direction: Axis.horizontal,
                center: Text(
                  "$progress%",
                  style: GoogleFonts.prompt(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.17,
            ),
            GestureDetector(
                onTap: () async {
                  if (checkFields())
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoanOffers()));
                },
                child: Container(
                  height: 70,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      color: progress == 100.0
                          ? const Color(0xFF5113AA)
                          : Colors.purpleAccent.withOpacity(0.2),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: Text('Continue',
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.white)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
