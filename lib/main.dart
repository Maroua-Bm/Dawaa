import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myapp/features/splash/splash_view.dart';
void main() {
  runApp(const dawaaapp());
}

class dawaaapp extends StatelessWidget {
  const dawaaapp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashview(
         )
      );
  }
}