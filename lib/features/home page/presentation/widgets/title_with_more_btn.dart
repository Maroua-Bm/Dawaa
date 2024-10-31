import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/core/utils/widgets/title_underline.dart';
import 'package:myapp/features/home%20page/categorie_screen.dart';
import 'package:myapp/features/home%20page/presentation/widgets/more_buttom.dart';
class titlewithmorebtn extends StatelessWidget {
  const titlewithmorebtn({
    Key? key, this.title, this.press, this.clr, this.scr, this.co
  }) : super(key: key);
  final String? title ;
  final  clr;
  final co;
  final Function? press ; 
  
  final scr;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5),
      child: Row(
        children: [
          titlewithcustomunderline(
            text:title,leeft:10,toop: 5,riight:2,bootom:5,),
            Spacer(),
          morebuttom(screen:scr,clr:co),
          SizedBox(
            width:5,
                  ),
            Icon(
            Icons.arrow_forward,
            color:co,
            size :17,
            ),
            ],
      ),
    );
  }
}
