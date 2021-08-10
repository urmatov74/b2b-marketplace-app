import 'package:flutter/material.dart';
import '../../../setting_size.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(250),
          width: getProportionateScreenWidth(250),
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.black, fontSize: getProportionateScreenWidth(18)),
        ),
      ],
    );
  }
}
