import 'package:b2b_marketplace/screens/items/components/body.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class NewItemsList extends StatelessWidget {
  static String routeName = "/newItems";
  @override
  Widget build(BuildContext context) {
    SetSize().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
