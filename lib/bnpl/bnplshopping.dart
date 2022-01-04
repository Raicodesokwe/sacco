import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:saccoapp/bnpl/modalbottomsheet/storefront.dart';
import 'package:saccoapp/credit/creditform.dart';
import 'package:saccoapp/mpesa/mpepe.dart';
import 'package:saccoapp/shop/stores.dart';
import 'package:saccoapp/signs/signup/provider/stringprovider.dart';

import 'bnplview.dart';

class BnplShopping extends StatefulWidget {
  const BnplShopping({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BnplShopping> createState() => _BnplShoppingState();
}

class _BnplShoppingState extends State<BnplShopping> {
  final _controller = TextEditingController();

  late String _searchText = _controller.text;
  int mbesha = 100;
  int partyB=254745347246;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double aspectRatio = 0.65;
    double spacing = 30;
    return Container(
      child: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CreditLimit()));
              },
              child: Container(
                  height: 70,
                  width: widget.size.width * 0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xFFBC53FA),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Center(
                    child: Text('Get your credit limit',
                        style: GoogleFonts.prompt(
                            fontWeight: FontWeight.w800,
                            fontSize: 18,
                            color: Colors.white)),
                  )),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
        
            
               GestureDetector(
                onTap: () {
                  print('touched');
                  MpepeService().pay(mbesha, partyB, context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => StoRes()));
                },
                child: Container(
                    height: 70,
                    width: widget.size.width * 0.9,
                    decoration: BoxDecoration(
                        color: const Color(0xFFBC53FA),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                      child: Text('Shop in stores',
                          style: GoogleFonts.prompt(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Colors.white)),
                    )),
              ),
          
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    FontAwesomeIcons.search,
                    color: Colors.black87,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                  ),
                ),
                onChanged: (value) {
                  Provider.of<BnplView>(context, listen: false)
                      .changeSearchString(value);
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Consumer<BnplView>(builder: (context, bnplData, child) {
                  return GridView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    // physics: AlwaysScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: aspectRatio,
                        crossAxisSpacing: spacing,
                        mainAxisSpacing: spacing),

                    itemBuilder: (_, i) {
                      return Transform.translate(
                        offset: Offset(0.0, i.isOdd ? 100 : 0.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 8,
                          shadowColor: Colors.black54,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreFront()));
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: ClipOval(
                                        child: AspectRatio(
                                            aspectRatio: 1,
                                            child: Image.asset(
                                              bnplData.shops[i].image,
                                              fit: BoxFit.cover,
                                            )))),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                    child: Text(bnplData.shops[i].title,
                                        style: GoogleFonts.prompt(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 18,
                                        )))
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: bnplData.shops.length,
                  );
                })),
          ],
        ),
      ),
    );
  }
}
