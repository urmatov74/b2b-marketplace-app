import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getProportionateScreenWidth(20),
      ),
      child: Container(
        child: SvgPicture.asset(
          "assets/logo/android-logo-black.svg",
          color: Colors.black.withOpacity(0.5),
          height: 80,
          width: 80,
        ),
      ),
    );
  }
}

// kSecondaryColor = 0xFFB6B6B6
