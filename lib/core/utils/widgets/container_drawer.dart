import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';

class containerdrawer extends StatelessWidget {
  const containerdrawer({ Key? key, this.titre, this.mic}) : super(key: key);
  final String? titre;
  final  IconData? mic;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
           
            child: Container(
             padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              height:65,
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color:kshadowcolor,width:1))),
             child: Row(
              children: [
              Icon(mic!,color:kunselectedcolor,size:32,) ,
              SizedBox(
                width:8,
              ),
              Text(titre!,
               style: TextStyle(
               fontFamily:'Nunito',
               fontWeight:FontWeight.bold ,
               fontSize: 17,
               color: ktextmorecolor,
               ),
                
                ) ,
                ],
              ),
            ),
          );
  }
}