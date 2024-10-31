import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/features/home%20page/presentation/widgets/Categories_dawaa.dart';
class morebuttom extends StatelessWidget {
  const morebuttom({ Key? key, this.clr, this.screen }) : super(key: key);
  final clr;
  final screen;
  void selectcategoriemore(BuildContext ctx){
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder:(c)=>screen
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectcategoriemore(context),
      child : Container(
        height: 30,
        width:60,
      child:Center(
      child:Text("See more",
             style: TextStyle(color:clr,
             fontSize: 14,
             ),
             ),),),
            
     );
  }
}