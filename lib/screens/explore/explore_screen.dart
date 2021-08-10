import 'package:b2b_marketplace/components/bottom_nav_bar.dart';
import 'package:b2b_marketplace/enums.dart';
import 'package:b2b_marketplace/screens/explore/components/body.dart';
import 'package:b2b_marketplace/screens/main_menu/components/header_search.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  static String routeName = "explore";
  ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    SetSize().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            MainMenuHeader(),
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: BottomNavBar(
        selectedTab: MenuState.explore,
      ),
    );
  }
}
