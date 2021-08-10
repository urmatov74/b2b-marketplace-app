import 'package:flutter/material.dart';

class BgScreen extends StatelessWidget {
  const BgScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
