import 'package:flutter/material.dart';
import 'package:myapp/core/space_widgets.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/core/utils/size_config.dart';

class pageviewitem extends StatelessWidget {
  const pageviewitem({ Key? key, this.image, this.title, this.descreption }) : super(key: key);
  final String? image;
  final String? title;
  final String? descreption;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const verticalspace(18),
       SizedBox(
         height : sizeconfig.defaultsize! * 25, 
        child : Image.asset(image!),
       ),
        const verticalspace(2.5),
                 Text(title!, style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
                color: ktextcolor,
                fontFamily : 'Nunito-Bold.ttf',
              ),
              textAlign: TextAlign.left,
            ),
            const verticalspace(2.5),
         Text(descreption!, style: TextStyle(
                 fontSize: 19,
                 color: ktextcolor,
                 fontFamily: 'Nunito-SemiBold.ttf',
                 ),
                  textAlign: TextAlign.left,
               ),
         ],
    );
     
        
               
  }
}