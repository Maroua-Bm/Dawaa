import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/core/utils/size_config.dart';

class customgeneralbutton extends StatelessWidget {
  const customgeneralbutton({Key? key,this.text, this.OnTap}) : super(key: key);
 final String? text;
 final VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: OnTap,
    child : Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: kbuttoncolor,
        borderRadius: BorderRadius.circular(10),
       ),
      child: Center(
        child : Text(
                text!, 
               style: TextStyle(
                 fontFamily:'Nunito-Regular.ttf',
                 fontSize:17,
                 color: Colors.white,
               ),
               textAlign : TextAlign.left,
               ),
      ),
    ));
  }
}