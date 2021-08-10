import 'package:b2b_marketplace/components/background_image.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';
import '../splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SetSize().init(context);
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Body(),
        ),
      ],
    );
  }
}
