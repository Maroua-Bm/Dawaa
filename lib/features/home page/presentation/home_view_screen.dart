

import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/features/home%20page/presentation/widgets/home_body.dart';
import 'package:myapp/features/home%20page/presentation/widgets/My_bottom_nav_bar.dart';

class homeview extends StatelessWidget {

const homeview({Key? key}) : super(key: key);

  get arrow_forward => null;
 @override
  Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
    
    return Scaffold(
     backgroundColor:Colors.white,
     
      body: mydraw(size: size),
      bottomNavigationBar: My_bottom_nav_bar(),
      
    );
  }
}

