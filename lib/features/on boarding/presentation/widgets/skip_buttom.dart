import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/features/home%20page/presentation/home_view_screen.dart';

class skipbuttom extends StatelessWidget {
  const skipbuttom({ Key? key }) : super(key: key);

  void selectskip(BuildContext ctx){
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder:(c)=>homeview()
      )   
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectskip(context),
      child : Container(
        height: 30,
        width:60,
      child:Center(
      child:Text("Skip",
             style: TextStyle(fontFamily:'Nunito-Regular.ttf',
               color:ktextcolor,
             fontSize: 19,
             ),
             ),),),
     );
  }
}