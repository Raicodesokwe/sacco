import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/pageeight/eightrate.dart';
import 'package:saccoapp/bnpl/pageeight/foureightrate.dart';
import 'package:saccoapp/bnpl/pageeight/threesixrate.dart';
import 'package:saccoapp/bnpl/pageeight/tuforate.dart';

import 'package:saccoapp/bnpl/pagefive/elseequianrate.dart';
import 'package:saccoapp/bnpl/pagefive/elseequimonrate.dart';
import 'package:saccoapp/bnpl/pagefive/elseequirate.dart';
import 'package:saccoapp/bnpl/pagefive/elseinterest.dart';
import 'package:saccoapp/bnpl/pagefive/equianrate.dart';
import 'package:saccoapp/bnpl/pagefive/equimonrate.dart';
import 'package:saccoapp/bnpl/pagefive/equirate.dart';
import 'package:saccoapp/bnpl/pagefive/feeamount.dart';
import 'package:saccoapp/bnpl/pagefive/foequianrate.dart';
import 'package:saccoapp/bnpl/pagefive/foequimonrate.dart';
import 'package:saccoapp/bnpl/pagefive/interesting.dart';
import 'package:saccoapp/bnpl/pagefive/kareoke.dart';
import 'package:saccoapp/bnpl/pagefive/lateness.dart';
import 'package:saccoapp/bnpl/pagefive/pleasenote.dart';
import 'package:saccoapp/bnpl/pagefive/treeequianrate.dart';
import 'package:saccoapp/bnpl/pagefive/treeequimonrate.dart';
import 'package:saccoapp/bnpl/pagefive/tuequianrate.dart';
import 'package:saccoapp/bnpl/pagefive/tuequimonrate.dart';
import 'package:saccoapp/bnpl/pagefive/tuequirate.dart';
import 'package:saccoapp/bnpl/pagefive/tuinterest.dart';

import 'package:saccoapp/bnpl/pagefour/continua.dart';

import 'package:saccoapp/bnpl/pagefour/datetufocolumn.dart';

import 'package:saccoapp/bnpl/pagefour/datewaneit.dart';

import 'package:saccoapp/bnpl/pagefour/divider.dart';
import 'package:saccoapp/bnpl/pagefour/divielsefo.dart';

import 'package:saccoapp/bnpl/pagefour/divifo.dart';

import 'package:saccoapp/bnpl/pagefour/divifofo.dart';

import 'package:saccoapp/bnpl/pagefour/divithrifo.dart';
import 'package:saccoapp/bnpl/pagefour/divitufo.dart';

import 'package:saccoapp/bnpl/pagefour/elso.dart';

import 'package:saccoapp/bnpl/pagefour/elsobytwelve.dart';
import 'package:saccoapp/bnpl/pagefour/feedeets.dart';
import 'package:saccoapp/bnpl/pagefour/firstcontainer.dart';
import 'package:saccoapp/bnpl/pagefour/inetufo.dart';
import 'package:saccoapp/bnpl/pagefour/omudottufo.dart';

import 'package:saccoapp/bnpl/pagefour/omunamba.dart';

import 'package:saccoapp/bnpl/pagefour/planreview.dart';
import 'package:saccoapp/bnpl/pagefour/pointtufo.dart';

import 'package:saccoapp/bnpl/pagefour/pointwaneit.dart';

import 'package:saccoapp/bnpl/pagefour/repayschedule.dart';
import 'package:saccoapp/bnpl/pagefour/segundacontainer.dart';

import 'package:saccoapp/bnpl/pagefour/sixbysix.dart';

import 'package:saccoapp/bnpl/pagefour/sixmontes.dart';
import 'package:saccoapp/bnpl/pagefour/thedate.dart';

import 'package:saccoapp/bnpl/pagefour/theinterest.dart';
import 'package:saccoapp/bnpl/pagefour/theprince.dart';
import 'package:saccoapp/bnpl/pagefour/threesixbythree.dart';

import 'package:saccoapp/bnpl/pagefour/threesixmafia.dart';
import 'package:saccoapp/bnpl/pagefour/thrifaivtu.dart';
import 'package:saccoapp/bnpl/pagefour/thrifaivtubaitu.dart';

import 'package:saccoapp/bnpl/pagefour/totalcontainer.dart';

import 'package:saccoapp/bnpl/pagefour/totalelso.dart';

import 'package:saccoapp/bnpl/pagefour/totalsixmontes.dart';
import 'package:saccoapp/bnpl/pagefour/totalthreesixmafia.dart';

import 'package:saccoapp/bnpl/pagefour/totalthrifaivtu.dart';

import 'package:saccoapp/bnpl/pagefour/totaltufo.dart';

import 'package:saccoapp/bnpl/pagefour/totwaneit.dart';

import 'package:saccoapp/bnpl/pagefour/treesixbynine.dart';

import 'package:saccoapp/bnpl/pagefour/tufodate.dart';

import 'package:saccoapp/bnpl/pagefour/wandottufo.dart';

import 'package:saccoapp/bnpl/pagethree/bifuracate.dart';

import 'package:saccoapp/bnpl/pagethree/bynine.dart';

import 'package:saccoapp/bnpl/pagethree/naite.dart';
import 'package:saccoapp/bnpl/pagethree/radiobyfour.dart';
import 'package:saccoapp/bnpl/pagethree/radiobytwo.dart';
import 'package:saccoapp/bnpl/pagethree/radioseventysix.dart';
import 'package:saccoapp/bnpl/pagethree/radiotiletext.dart';
import 'package:saccoapp/bnpl/pagethree/radiotrestatu.dart';
import 'package:saccoapp/bnpl/pagethree/radiounne.dart';

import 'package:saccoapp/bnpl/pagethree/radioupili.dart';
import 'package:saccoapp/bnpl/pagethree/sigiste.dart';

import 'package:saccoapp/bnpl/pagethree/tatugawanne.dart';

import 'package:saccoapp/bnpl/pagethree/tatugawasita.dart';
import 'package:saccoapp/bnpl/pagethree/taturada.dart';

import 'package:saccoapp/bnpl/pagethree/thesixes.dart';

import 'package:saccoapp/bnpl/pagethree/threesigiste.dart';

import 'package:saccoapp/bnpl/pagethree/tuseventee.dart';

import 'package:saccoapp/bnpl/pagethree/waneiti.dart';

import 'package:saccoapp/bnpl/pagethree/yamwisho.dart';

import 'package:saccoapp/bnpl/pagethree/yamwishobyfour.dart';

import 'package:saccoapp/bnpl/pagethree/yearinstall.dart';
import 'package:saccoapp/bnpl/pagetwo/continuetext.dart';
import 'package:saccoapp/bnpl/pagetwo/flex.dart';
import 'package:saccoapp/bnpl/pagetwo/gesturedetective.dart';
import 'package:saccoapp/bnpl/pagetwo/howmuch.dart';
import 'package:saccoapp/bnpl/pagetwo/ingizamoney.dart';
import 'package:saccoapp/bnpl/pagetwo/onlycharged.dart';
import 'package:saccoapp/bnpl/pagetwo/pilidojopay.dart';

import 'package:saccoapp/bnpl/pagewan/availabletospend.dart';
import 'package:saccoapp/bnpl/pagewan/btntext.dart';
import 'package:saccoapp/bnpl/pagewan/dojojumia.dart';
import 'package:saccoapp/bnpl/pagewan/enteramount.dart';
import 'package:saccoapp/bnpl/pagewan/pageuno.dart';
import 'package:saccoapp/bnpl/pagewan/paydojo.dart';
import 'package:saccoapp/bnpl/pagewan/splitpurchase.dart';
import 'package:saccoapp/bnpl/pagewan/weshallsend.dart';
import 'package:saccoapp/bnpl/pagewan/workshow.dart';
import 'package:saccoapp/mpesa/mpepe.dart';

import 'provider/doubleprovider.dart';

enum InterestTerms { firstoption, secondOption, thirdOption }

class PageKwanza extends StatefulWidget {
  const PageKwanza({
    Key? key,
    required this.numberFormat,
    required this.cardNumberStyle,
  }) : super(key: key);

  final NumberFormat numberFormat;
  final TextStyle cardNumberStyle;

  @override
  State<PageKwanza> createState() => _PageKwanzaState();
}

class _PageKwanzaState extends State<PageKwanza> {
  InterestTerms? _character;
  late double amount;

  int currentview = 0;
  late List<Widget> pages = [
    page1(),
    page2(),
    page3(),
    page4(),
    page5(),
    page6(),
    page7(),
    page8(),
    page9()
  ];

  @override
  Widget build(BuildContext context) {
    return pages[currentview];
  }

  Widget page9() {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
            tileColor: const Color(0xFFfce7fe),
            title: PiliDojoPay(),
            trailing: GestureDetective()),
        SizedBox(
          height: size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Icon(
                FontAwesomeIcons.hourglassHalf,
                color:  const Color(0xFF5113AA),
                size: 50,
              ),
              Text(
                'Please wait as we send the money to your mpesa account',
                style: GoogleFonts.prompt(
                    fontSize: 25, color: const Color(0xFF5113AA)),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget page8() {
    Size size = MediaQuery.of(context).size;
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      if (namba >= 250 && namba < 2000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 6;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          SizedBox(
            height: size.height * 0.03,
          ),
          FeeAmount(),
          DiviShawn(),
          ThriFaivTu(),
          EightRate(),
          EquiMonRate(),
          EquiAnRate(),
          DiviShawn(),
          LateNess(),
          DiviShawn(),
          KarEoki(),
          PleaseNote()
        ]);
      } else if (namba < 5000 && namba >= 2000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 6;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          SizedBox(
            height: size.height * 0.03,
          ),
          FeeAmount(),
          DiviShawn(),
          ThreeSixMafia(),
          ThreeSixRate(),
          TuEquiMonRate(),
          TuEquiAnRate(),
          DiviShawn(),
          LateNess(),
          DiviShawn(),
          KarEoki(),
          PleaseNote()
        ]);
      } else if (namba < 10000 && namba >= 5000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 6;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          SizedBox(
            height: size.height * 0.03,
          ),
          FeeAmount(),
          DiviShawn(),
          SixMontes(),
          FourEightRate(),
          TreeEquiMonRate(),
          TreeEquiAnRate(),
          DiviShawn(),
          LateNess(),
          DiviShawn(),
          KarEoki(),
          PleaseNote()
        ]);
      } else if (namba < 20000 && namba >= 10000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 6;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          SizedBox(
            height: size.height * 0.03,
          ),
          FeeAmount(),
          DiviShawn(),
          ThreeSixMafia(),
          ThreeSixRate(),
          FoEquiMonRate(),
          FoEquiAnRate(),
          DiviShawn(),
          LateNess(),
          DiviShawn(),
          KarEoki(),
          PleaseNote()
        ]);
      } else {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 6;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          SizedBox(
            height: size.height * 0.03,
          ),
          FeeAmount(),
          DiviShawn(),
          ElSo(),
          TufoRate(),
          ElseEquiMonRate(),
          ElseEquiAnRate(),
          DiviShawn(),
          LateNess(),
          DiviShawn(),
          KarEoki(),
          PleaseNote()
        ]);
      }
    });
  }

  Widget page7() {
    Size size = MediaQuery.of(context).size;

    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;

      if (namba >= 250 && namba < 2000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          ThriFaivTu(),
          DiviShawn(),
          TotalThriFaivTu(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 7;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          ThriFaivTuBaiTu(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      } else if (namba < 5000 && namba >= 2000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          ThreeSixMafia(),
          DiviShawn(),
          TotalThreeSixMafia(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 7;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          ThreeSixByThree(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      } else if (namba < 10000 && namba >= 5000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          SixMontes(),
          DiviShawn(),
          TotalSixMontes(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 7;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          SixBySix(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      } else if (namba < 20000 && namba >= 10000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          ThreeSixMafia(),
          DiviShawn(),
          TotalThreeSixMafia(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 7;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          TreeSixByNine(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      } else {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          ElSo(),
          DiviShawn(),
          TotalElso(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 7;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          ElsoByTwelve(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      }
    });
  }

  Widget page6() {
    Size size = MediaQuery.of(context).size;
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      if (namba >= 250 && namba < 2000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          SegundaContainer(),
          DiviShawn(),
          TotalContainer(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 4;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          DiviFo(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      } else if (namba < 5000 && namba >= 2000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          PointTuFo(),
          DiviShawn(),
          TotalTuFo(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 4;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          DiviTuFo(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      } else if (namba < 10000 && namba >= 5000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          PointTuFo(),
          DiviShawn(),
          TotalTuFo(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 4;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          DiviThriFo(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      } else if (namba < 20000 && namba >= 10000) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          PointTuFo(),
          DiviShawn(),
          TotalTuFo(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 4;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          DiviFofo(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      } else {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 2;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          PlanReview(),
          SizedBox(
            height: size.height * 0.03,
          ),
          OmuNamba(),
          DiviShawn(),
          PointTuFo(),
          DiviShawn(),
          TotalTuFo(),
          SizedBox(
            height: size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                currentview = 4;
              });
            },
            child: FeeDeets(),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RepaySchedule(),
          SizedBox(
            height: size.height * 0.05,
          ),
          DiviElseFo(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 8;
              });
            },
            child: ContiNua(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ]);
      }
    });
  }

  Widget page5() {
    Size size = MediaQuery.of(context).size;
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      if (namba >= 250 && namba < 2000) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 3;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            SizedBox(
              height: size.height * 0.03,
            ),
            FeeAmount(),
            DiviShawn(),
            InterestIng(),
            EquiRate(),
            EquiMonRate(),
            EquiAnRate(),
            DiviShawn(),
            LateNess(),
            DiviShawn(),
            KarEoki(),
            PleaseNote()
          ],
        );
      } else if (namba < 5000 && namba >= 2000) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 3;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            SizedBox(
              height: size.height * 0.03,
            ),
            FeeAmount(),
            DiviShawn(),
            TuInterest(),
            TuEquirate(),
            TuEquiMonRate(),
            TuEquiAnRate(),
            DiviShawn(),
            LateNess(),
            DiviShawn(),
            KarEoki(),
            PleaseNote()
          ],
        );
      } else if (namba < 10000 && namba >= 5000) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 3;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            SizedBox(
              height: size.height * 0.03,
            ),
            FeeAmount(),
            DiviShawn(),
            TuInterest(),
            TuEquirate(),
            TreeEquiMonRate(),
            TreeEquiAnRate(),
            DiviShawn(),
            LateNess(),
            DiviShawn(),
            KarEoki(),
            PleaseNote()
          ],
        );
      } else if (namba < 20000 && namba >= 10000) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 3;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            SizedBox(
              height: size.height * 0.03,
            ),
            FeeAmount(),
            DiviShawn(),
            TuInterest(),
            TuEquirate(),
            FoEquiMonRate(),
            FoEquiAnRate(),
            DiviShawn(),
            LateNess(),
            DiviShawn(),
            KarEoki(),
            PleaseNote()
          ],
        );
      } else {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 3;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            SizedBox(
              height: size.height * 0.03,
            ),
            FeeAmount(),
            DiviShawn(),
            ElseInterest(),
            ElseEquiRate(),
            ElseEquiMonRate(),
            ElseEquiAnRate(),
            DiviShawn(),
            LateNess(),
            DiviShawn(),
            KarEoki(),
            PleaseNote()
          ],
        );
      }
    });
  }

  Widget page4() {
    Size size = MediaQuery.of(context).size;

    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      if (namba >= 250 && namba < 2000) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 2;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            PlanReview(),
            SizedBox(
              height: size.height * 0.03,
            ),
            FirstContainer(),
            DiviShawn(),
            SegundaContainer(),
            DiviShawn(),
            TotalContainer(),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    currentview = 4;
                  });
                },
                child: FeeDeets()),
            SizedBox(
              height: size.height * 0.02,
            ),
            RepaySchedule(),
            SizedBox(
              height: size.height * 0.05,
            ),
            TheDate(),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentview = 8;
                });
              },
              child: ContiNua(),
              color: const Color(0xFF5113AA),
              height: 70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 8,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        );
      } else if (namba < 5000 && namba >= 2000) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 2;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            PlanReview(),
            SizedBox(
              height: size.height * 0.03,
            ),
            ThePrince(),
            DiviShawn(),
            PointTuFo(),
            DiviShawn(),
            TotalTuFo(),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    currentview = 4;
                  });
                },
                child: FeeDeets()),
            SizedBox(
              height: size.height * 0.02,
            ),
            RepaySchedule(),
            SizedBox(
              height: size.height * 0.05,
            ),
            DateTufoColumn(),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentview = 8;
                });
              },
              child: ContiNua(),
              color: const Color(0xFF5113AA),
              height: 70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 8,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        );
      } else if (namba < 10000 && namba >= 5000) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 2;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            PlanReview(),
            SizedBox(
              height: size.height * 0.03,
            ),
            OmuNamba(),
            DiviShawn(),
            OmuDotTufo(),
            DiviShawn(),
            WanDotTufo(),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    currentview = 4;
                  });
                },
                child: FeeDeets()),
            SizedBox(
              height: size.height * 0.02,
            ),
            RepaySchedule(),
            SizedBox(
              height: size.height * 0.05,
            ),
            TufoDate(),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentview = 8;
                });
              },
              child: ContiNua(),
              color: const Color(0xFF5113AA),
              height: 70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 8,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        );
      } else if (namba < 20000 && namba >= 10000) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 2;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            PlanReview(),
            SizedBox(
              height: size.height * 0.03,
            ),
            OmuNamba(),
            DiviShawn(),
            OmuDotTufo(),
            DiviShawn(),
            TotalTuFo(),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    currentview = 4;
                  });
                },
                child: FeeDeets()),
            SizedBox(
              height: size.height * 0.02,
            ),
            RepaySchedule(),
            SizedBox(
              height: size.height * 0.05,
            ),
            IneTufo(),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentview = 8;
                });
              },
              child: ContiNua(),
              color: const Color(0xFF5113AA),
              height: 70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 8,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        );
      } else {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                tileColor: const Color(0xFFfce7fe),
                leading: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentview = 2;
                      });
                    },
                    child: Icon(
                      FontAwesomeIcons.backward,
                    )),
                title: PiliDojoPay(),
                trailing: GestureDetective()),
            PlanReview(),
            SizedBox(
              height: size.height * 0.03,
            ),
            OmuNamba(),
            DiviShawn(),
            PointWanEit(),
            DiviShawn(),
            TotWanEit(),
            SizedBox(
              height: size.height * 0.02,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    currentview = 4;
                  });
                },
                child: FeeDeets()),
            SizedBox(
              height: size.height * 0.02,
            ),
            RepaySchedule(),
            SizedBox(
              height: size.height * 0.05,
            ),
            DateWanEit(),
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentview = 8;
                });
              },
              child: ContiNua(),
              color: const Color(0xFF5113AA),
              height: 70,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 8,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          ],
        );
      }
    });
  }

  Widget page3() {
    return Consumer<FirstNotifier>(builder: (context, firstData, child) {
      final namba = firstData.getValue;
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setModalState) {
        if (namba >= 250 && namba < 2000) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  tileColor: const Color(0xFFfce7fe),
                  leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentview = 1;
                        });
                      },
                      child: Icon(
                        FontAwesomeIcons.backward,
                      )),
                  title: PiliDojoPay(),
                  trailing: GestureDetective()),
              RadioListTile<InterestTerms>(
                title: RadioTileText(),
                activeColor: const Color(0xFF5113AA),
                subtitle: RadioSeventySix(),
                value: InterestTerms.firstoption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 3;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: RadioTileText(),
                activeColor: const Color(0xFF5113AA),
                subtitle: RadioByFour(),
                value: InterestTerms.secondOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 5;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: SigisTe(),
                activeColor: const Color(0xFF5113AA),
                subtitle: RadioByTwo(),
                value: InterestTerms.thirdOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 6;
                    });
                  });
                },
              ),
            ],
          );
        } else if (namba < 5000 && namba >= 2000) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  tileColor: const Color(0xFFfce7fe),
                  leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentview = 1;
                        });
                      },
                      child: Icon(
                        FontAwesomeIcons.backward,
                      )),
                  title: PiliDojoPay(),
                  trailing: GestureDetective()),
              RadioListTile<InterestTerms>(
                title: SigisTe(),
                activeColor: const Color(0xFF5113AA),
                subtitle: RadioUpili(),
                value: InterestTerms.firstoption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 3;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: SigisTe(),
                activeColor: const Color(0xFF5113AA),
                subtitle: RadioUnne(),
                value: InterestTerms.secondOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 5;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: NaIte(),
                activeColor: const Color(0xFF5113AA),
                subtitle: RadioTresTatu(),
                value: InterestTerms.thirdOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 6;
                    });
                  });
                },
              ),
            ],
          );
        } else if (namba < 10000 && namba >= 5000) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  tileColor: const Color(0xFFfce7fe),
                  leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentview = 1;
                        });
                      },
                      child: Icon(
                        FontAwesomeIcons.backward,
                      )),
                  title: PiliDojoPay(),
                  trailing: GestureDetective()),
              RadioListTile<InterestTerms>(
                title: NaIte(),
                activeColor: const Color(0xFF5113AA),
                subtitle: TatuRada(),
                value: InterestTerms.firstoption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 3;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: NaIte(),
                activeColor: const Color(0xFF5113AA),
                subtitle: TatuGawaNne(),
                value: InterestTerms.secondOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 5;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: WanEiti(),
                activeColor: const Color(0xFF5113AA),
                subtitle: TatuGawaSita(),
                value: InterestTerms.thirdOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 6;
                    });
                  });
                },
              ),
            ],
          );
        } else if (namba < 20000 && namba >= 10000) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  tileColor: const Color(0xFFfce7fe),
                  leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentview = 1;
                        });
                      },
                      child: Icon(
                        FontAwesomeIcons.backward,
                      )),
                  title: PiliDojoPay(),
                  trailing: GestureDetective()),
              RadioListTile<InterestTerms>(
                title: WanEiti(),
                activeColor: const Color(0xFF5113AA),
                subtitle: TheSixes(),
                value: InterestTerms.firstoption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 3;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: WanEiti(),
                activeColor: const Color(0xFF5113AA),
                subtitle: BifurCate(),
                value: InterestTerms.secondOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 5;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: TusevenTee(),
                activeColor: const Color(0xFF5113AA),
                subtitle: ByNine(),
                value: InterestTerms.thirdOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 6;
                    });
                  });
                },
              ),
            ],
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  tileColor: const Color(0xFFfce7fe),
                  leading: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentview = 1;
                        });
                      },
                      child: Icon(
                        FontAwesomeIcons.backward,
                      )),
                  title: PiliDojoPay(),
                  trailing: GestureDetective()),
              RadioListTile<InterestTerms>(
                title: TusevenTee(),
                activeColor: const Color(0xFF5113AA),
                subtitle: YaMwisho(),
                value: InterestTerms.firstoption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 3;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: TusevenTee(),
                activeColor: const Color(0xFF5113AA),
                subtitle: YaMwishoByFour(),
                value: InterestTerms.secondOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 5;
                    });
                  });
                },
              ),
              RadioListTile<InterestTerms>(
                title: ThreeSigiste(),
                activeColor: const Color(0xFF5113AA),
                subtitle: YearInstall(),
                value: InterestTerms.thirdOption,
                groupValue: _character,
                onChanged: (InterestTerms? value) {
                  setModalState(() {
                    _character = value;
                    setState(() {
                      currentview = 6;
                    });
                  });
                },
              ),
            ],
          );
        }
      });
    });
  }

  Widget page2() {
    Size size = MediaQuery.of(context).size;
    final _sjava = new GlobalKey<FormState>();

    checkFields() {
      final form = _sjava.currentState;
      if (form!.validate()) {
        form.save();
        return true;
      }
      return false;
    }

    String? validateAmount(String value) {
      if (double.parse(value) < 250) {
        return 'Amount cannot be less than Ksh250';
      } else if (double.parse(value) >
          Provider.of<FirstNotifier>(context, listen: false).credValue) {
        return 'Amount can\'t be greater than your credit limit';
      }
      return null;
    }

    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
              tileColor: const Color(0xFFfce7fe),
              leading: GestureDetector(
                  onTap: () {
                    setState(() {
                      currentview = 0;
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.backward,
                  )),
              title: PiliDojoPay(),
              trailing: GestureDetective()),
          HowMuch(),
          SizedBox(
            height: size.height * 0.01,
          ),
          OnlyCharged(),
          SizedBox(
            height: size.height * 0.01,
          ),
          IngizaMoney(),
          Container(
            width: size.width * 0.8,
            child: Row(
              children: [
                FlexIble(),
                Flexible(
                  flex: 5,
                  child: Form(
                    key: _sjava,
                    child: TextFormField(
                      onChanged: (value) {
                        Provider.of<FirstNotifier>(context, listen: false)
                            .changeVal(double.parse(value));
                      },
                      validator: (value) => value!.isEmpty
                          ? 'Amount is required'
                          : validateAmount(value),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          MaterialButton(
            onPressed: () {
              if (checkFields())
                setState(() {
                  currentview = 2;
                });
            },
            child: ContinueText(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
        ],
      ),
    );
  }

  Widget page1() {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PageUno(),
          DojoJumia(),
          SizedBox(
            height: size.height * 0.01,
          ),
          SplitPurchase(),
          WorksHow(),
          PayDojo(),
          EnterAmount(),
          WeShallSend(),
          MaterialButton(
            onPressed: () {
              setState(() {
                currentview = 1;
              });
            },
            child: BtnText(),
            color: const Color(0xFF5113AA),
            height: 70,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 8,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          AvailableToSpend()
        ],
      ),
    );
  }
}
