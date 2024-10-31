import 'package:flutter/material.dart';


import 'package:myapp/features/home%20page/presentation/widgets/bar_item.dart';


class pharmaciescreen extends StatelessWidget {
   pharmaciescreen({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Size size=MediaQuery.of(context).size;
    return baritem(size: size);
  }
}

      
    

