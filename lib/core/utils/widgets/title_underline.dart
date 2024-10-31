import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';

class titlewithcustomunderline extends StatelessWidget {
   titlewithcustomunderline({
    Key? key, this.text, this.toop,this.leeft, this.riight, this.bootom,
  }) : super(key: key);
 final String? text;
 final double? toop;
 final double? leeft;
final double? riight;
final double? bootom;
  @override
  Widget build(BuildContext context) {
    return Container(
          margin:  EdgeInsets.fromLTRB( leeft!,toop!,riight!,bootom!),
          decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: mainGreen, width:2)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            child: Text(
              text!,
              style: TextStyle(
                fontFamily: 'fonts/Nunito-Regular.ttf',
                fontSize: 18,
                color: mainGreen,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
  }
}

