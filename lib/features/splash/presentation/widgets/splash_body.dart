import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/core/utils/size_config.dart';
import 'package:myapp/features/on%20boarding/presentation/on_boarding_view.dart';
class splashbody extends StatefulWidget {
  const splashbody({ Key? key }) : super(key: key);
@override
  _splashbodystate createState() => _splashbodystate();
}
class _splashbodystate extends State<splashbody> with SingleTickerProviderStateMixin {
   AnimationController ?animationController;
  Animation <double>?fadingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration:Duration(milliseconds:600) );
    fadingAnimation = 
      Tween<double>( begin: .2, end: 1).animate(animationController!);
     animationController?.repeat (reverse: true);
     goToNextView ();      
  }     
 @override
 void dispose() {
   animationController?.dispose(); 
   super.dispose();
 }       
  @override
  Widget build(BuildContext context) {
    sizeconfig().init(context);
    return Container(
      margin: EdgeInsets.only(top:60),
      child: Column(
        children: [
           Image.asset('assets/images/logo.png'),
        Column(
          children: [
             FadeTransition(opacity:fadingAnimation!,
               child : Text('DAWAA', 
               style: TextStyle(
                 fontFamily:'Nunito',
                 fontSize: 35,
                 fontWeight: FontWeight.bold,
                 color: ktextcolor,
         ),
           ),
            ),
             ],
              ),   
               ],
                ),
                 ); 
        
  }
 void goToNextView() {
    Future.delayed(Duration(seconds:4),()
       {
        Get.to(()=> onboardingview(), transition: Transition.fade);
       }
    );
  }
}

