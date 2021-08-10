import 'package:b2b_marketplace/components/bottom_nav_bar.dart';
import 'package:b2b_marketplace/enums.dart';
import 'package:b2b_marketplace/screens/profile/components/body.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "profile";
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SetSize().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavBar(
        selectedTab: MenuState.profile,
      ),
    );
  }
}
