import 'package:b2b_marketplace/constants.dart';
import 'package:flutter/material.dart';

import '../setting_size.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.pressed,
  }) : super(key: key);
  final String text;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(225),
      height: getProportionateScreenHeight(45),
      // ignore: deprecated_member_use
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: kPrimaryColor,
        onPressed: pressed,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(17),
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
