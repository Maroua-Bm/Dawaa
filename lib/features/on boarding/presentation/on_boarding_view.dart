import 'package:flutter/material.dart';
import 'package:myapp/features/on%20boarding/presentation/widgets/on_boarding_body.dart';
class onboardingview extends StatelessWidget {
  const onboardingview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onboardingbody()
    );
  }
}