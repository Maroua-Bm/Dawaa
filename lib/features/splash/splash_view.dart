import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:myapp/features/splash/presentation/widgets/splash_body.dart';
class splashview extends StatelessWidget {
  const splashview({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:splashbody(),
      
    );
  }
}


