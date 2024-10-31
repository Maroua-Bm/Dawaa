import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/core/utils/size_config.dart';
import 'package:myapp/core/utils/widgets/custom_buttons.dart';
import 'package:myapp/features/home%20page/presentation/widgets/My_bottom_nav_bar.dart';
import 'package:myapp/features/on%20boarding/presentation/widgets/custom_indicator.dart';
import 'package:myapp/features/on%20boarding/presentation/widgets/custom_page_view.dart';
import 'package:myapp/features/on%20boarding/presentation/widgets/skip_buttom.dart';

class onboardingbody extends StatefulWidget {
  const onboardingbody({Key? key}) : super(key: key);
 @override
  State<onboardingbody> createState() => _onboardingbodyState();
}
class _onboardingbodyState extends State<onboardingbody> {
  PageController? pageController;
  @override
  void initState() {
    pageController= PageController(
      initialPage: 0
    )..addListener(() {
      setState(() {
    });
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        custompageview(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
         bottom: sizeconfig.defaultsize! *20,
          child:customindicator(
           dotindex: pageController!.hasClients ? pageController!.page :0,
          ),
        ),
        Visibility(
          visible:pageController!.hasClients ? (pageController?.page == 1 ?false : true) : true ,
          child: Positioned (top: sizeconfig.defaultsize! * 10,
          right:5,
         child: skipbuttom()
          ),
        ),
        Positioned(
          right: sizeconfig.defaultsize! *10,
          left:sizeconfig.defaultsize! *10, 
          bottom: sizeconfig.defaultsize! *10,
         child :customgeneralbutton (
           OnTap: () {
             if (pageController!.page! < 1 ){
               pageController?.nextPage(
                 duration: Duration(milliseconds:500), curve:Curves.easeIn );
             } else{
               Get.to(()=> My_bottom_nav_bar(), transition: Transition.rightToLeft, duration: Duration(milliseconds: 200));
             }
           },
           text:pageController!.hasClients ?(pageController?.page ==1 ? 'Get started' : 'Next') : 'Next',
         ),
        ),
      ],
    );
  }
}