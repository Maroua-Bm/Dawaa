import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';

class customindicator extends StatelessWidget {
  const customindicator({ Key? key,@required this.dotindex }) : super(key: key);
  final double? dotindex;
  @override
  Widget build(BuildContext context) {
    return  DotsIndicator(
          decorator:DotsDecorator(
            color: Colors.transparent,
            activeColor:kbuttoncolor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: kbuttoncolor),
            ),),
          dotsCount: 2,
          position:dotindex!,
          );
      
    
  }
}