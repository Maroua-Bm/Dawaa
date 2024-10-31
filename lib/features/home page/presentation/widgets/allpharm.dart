import 'package:flutter/material.dart';
import 'package:myapp/features/home%20page/presentation/widgets/product.dart';
import 'package:myapp/features/home%20page/presentation/widgets/trydetpharm.dart';

class allpharm extends StatelessWidget {
   allpharm({
    Key? key,
    required this.itemIndex,
    required this.pro,
  }) : super(key: key);

  final int itemIndex;
  final Product pro;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15, //15 al3ord T3 ga3 list item
            vertical: 3, //3
          ),
          height: 175.0, // i will add inkwell properity190 between them
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (c) => trydetpharm()),
              );
            },
            splashColor: Colors.black12,
            borderRadius: BorderRadius.circular(22),
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                height: 166.0, //166 toollist
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color:Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(6, 6),
                      blurRadius: 7.0,
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0.0,
                child: Container(
                  margin: EdgeInsets.only(right: 0, top: 0),
                  height: 165,
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                    child: Image.asset(
                      pro.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                child: SizedBox(
                  height: 140.0,
                  width:
                      size.width - 70, //taille de lécran - taille de la photo
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          //NAME Of tha pharm padding
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            pro.title,
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 18.0,
                              color: Color(0xFF499497),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          // Location padding
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ), //30 px
                          child: Text(
                            pro.subtitle,
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 16.0,
                              color: Color(0xFF226D70),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          // open bottom padding
                          padding: const EdgeInsets.all(17.0),

                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal:30,
                              vertical:30 / 5, //5 px padding
                            ),
                            margin: EdgeInsets.only(left: 120),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(6, 6),
                                  blurRadius: 7.0,
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Text(
                              pro.oc,
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 15.0,
                                color: Color(0xFF00E2B2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}