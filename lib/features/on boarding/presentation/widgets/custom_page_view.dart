import 'package:flutter/material.dart';
import 'package:myapp/core/utils/size_config.dart';
import 'package:myapp/features/on%20boarding/presentation/widgets/page_view_item.dart';

class custompageview extends StatelessWidget {
  const custompageview({ Key? key,@required this.pageController }) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:pageController ,
      children: [
        pageviewitem(
          image: 'assets/images/photo1.png',
          title: 'Welcome',
          descreption: 'Finding medicaments is simple',
        ),
         pageviewitem(
          image: 'assets/images/photo2.png',
          title: 'We are hear to help',
          descreption: 'Finding the near pharmacies',
        ),
      ],
    );
  }
}