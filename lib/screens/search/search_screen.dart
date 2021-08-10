import 'package:b2b_marketplace/components/bottom_nav_bar.dart';
import 'package:b2b_marketplace/enums.dart';
import 'package:b2b_marketplace/screens/search/components/body.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "search";
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SetSize().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(
        selectedTab: MenuState.search,
      ),
    );
  }
}
