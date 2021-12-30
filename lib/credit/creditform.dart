import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:saccoapp/credit/creditonly.dart';
import 'package:saccoapp/pages/loanapplication/loanagreement.dart';
import 'package:saccoapp/pages/profilepage.dart';



class CreditLimit extends StatefulWidget {
  @override
  State<CreditLimit> createState() => _CreditLimitState();
}

class _CreditLimitState extends State<CreditLimit> {
  final _dumebi = new GlobalKey<FormState>();

  checkFields() {
    final form = _dumebi.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  String? validateId(String value) {
    if (value.length > 8 || value.length < 7) {
      return 'Please enter a valid ID number';
    }
    return null;
  }

  DateTime selectedDate = DateTime.now();

  DateTime? date;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        builder: (BuildContext context, Widget? child) {
          return Theme(
              data: ThemeData.light().copyWith(
                primaryColor: Colors.purpleAccent.withOpacity(0.2),
                buttonTheme:
                    ButtonThemeData(textTheme: ButtonTextTheme.primary),
                colorScheme: ColorScheme.light(primary: Colors.purple)
                    .copyWith(secondary: Colors.purple[300]),
              ),
              child: child!);
        },
        context: context,
        initialDate: DateTime(2003),
        firstDate: DateTime(1940),
        lastDate: DateTime.now().subtract(Duration(days: 6400)));
    if (picked != null && picked != date) {
      print('hello $picked');
      setState(() {
        date = picked;
      });
    }
  }

  late String legalName;

  late String id;

  final TextEditingController _dobController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Welcome to Dojo',
            style: GoogleFonts.spartan(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black54),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Icon(
                  FontAwesomeIcons.userCircle,
                  color: Colors.black54,
                ),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Form(
          key: _dumebi,
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!isKeyboard)
                  Container(
                    width: size.width * 0.8,
                    child: Text(
                      'Before we offer you a credit limit or loan, we need a few pieces of information',
                      style: GoogleFonts.prompt(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                  ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black45.withOpacity(0.5), width: 2.0),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      validator: (value) =>
                          value!.isEmpty ? 'Full legal name is required' : null,
                      keyboardType: TextInputType.text,
                      onChanged: (value) {
                        this.legalName = value;
                      },
                      decoration: InputDecoration(
                          labelText: 'Full Legal name',
                          labelStyle: GoogleFonts.prompt(),
                          border: InputBorder.none),
                    )),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black45.withOpacity(0.5), width: 2.0),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      validator: (value) => value!.isEmpty
                          ? 'Please enter ID number'
                          : validateId(value),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        this.id = value;
                      },
                      decoration: InputDecoration(
                          labelText: 'National ID number',
                          labelStyle: GoogleFonts.prompt(),
                          border: InputBorder.none),
                    )),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 15, right: 8),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black45.withOpacity(0.5), width: 2.0),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      onChanged: (value) {
                        _dobController.text = value;

                        //this keyword reps an implicit object pointing to current class object
                        //eliminates confusion between class attributes and parameters with same name
                      },
                      validator: (value) =>
                          value!.isEmpty ? 'Date of birth is required' : null,
                      maxLength: 10,
                      onTap: () async {
                        // Below line stops keyboard from appearing
                        FocusScope.of(context).requestFocus(new FocusNode());
                        // Show Date Picker Here
                        await _selectDate(context);
                        _dobController.text =
                            DateFormat('yyyy/MM/dd').format(date!);
                        //setState(() {});
                      },
                      controller: _dobController,
                      decoration: InputDecoration(
                          hintText: 'Date of birth', border: InputBorder.none),
                    )),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  'I agree to Dojo\'s',
                  style: GoogleFonts.prompt(
                      color: Colors.black45,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoanAgreement()));
                  },
                  child: Text(
                    'Terms of use and loan account agreement ',
                    style: GoogleFonts.prompt(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    if (checkFields())
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreditOnly(legalName,id,_dobController.text)));
                  },
                  child: Container(
                      height: 70,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                          color: const Color(0xFF5113AA),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Center(
                        child: Text('Continue',
                            style: GoogleFonts.prompt(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.white)),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
