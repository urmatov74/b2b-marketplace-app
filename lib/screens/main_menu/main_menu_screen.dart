import 'package:b2b_marketplace/components/bottom_nav_bar.dart';
import 'package:b2b_marketplace/constants.dart';
import 'package:b2b_marketplace/enums.dart';
import 'package:b2b_marketplace/screens/main_menu/components/body.dart';
import 'package:b2b_marketplace/screens/main_menu/components/header_search.dart';
import 'package:b2b_marketplace/screens/main_menu/components/store_list.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = "/";
  @override
  Widget build(BuildContext context) {
    SetSize().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 18.0), //For Selected tab
            unselectedLabelStyle:
                TextStyle(fontSize: 13.0), //For Un-selected Tabs
            tabs: [
              Tab(
                text: "Товары",
              ),
              Tab(text: "Магазины")
            ],
          ),
          automaticallyImplyLeading: false,
          title: MainMenuHeader(),
        ),
        body: TabBarView(
          children: [
            Body(),
            StoreList(),
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () =>
        //       Navigator.of(context).pushNamed(SplashScreen.routeName),
        // ),
        bottomNavigationBar: BottomNavBar(
          selectedTab: MenuState.home,
        ),
      ),
    );
  }
}
