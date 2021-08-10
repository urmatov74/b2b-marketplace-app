import 'package:b2b_marketplace/enums.dart';
import 'package:b2b_marketplace/screens/auth/auth.dart';
import 'package:b2b_marketplace/screens/explore/explore_screen.dart';
import 'package:b2b_marketplace/screens/main_menu/main_menu_screen.dart';
import 'package:b2b_marketplace/screens/search/search_screen.dart';
import 'package:b2b_marketplace/setting_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required this.selectedTab,
  }) : super(key: key);

  final MenuState selectedTab;

  @override
  Widget build(BuildContext context) {
    final Color unSelectedColor = Color(0xFFB6B6B6);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenHeight(1),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.4),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/home.svg",
                  height: getProportionateScreenHeight(27.0),
                  width: getProportionateScreenWidth(27.0),
                  color: MenuState.home == selectedTab
                      ? Color(0xFF0591EE)
                      : unSelectedColor),
              onPressed: () => MenuState.home == selectedTab
                  ? {/*scroll to the top of the screen*/}
                  : Navigator.of(context).pushNamed(MainMenuScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/shopping-bag.svg",
                  height: getProportionateScreenHeight(27.0),
                  width: getProportionateScreenWidth(27.0),
                  color: MenuState.explore == selectedTab
                      ? Color(0xFF0591EE)
                      : unSelectedColor),
              onPressed: () => MenuState.explore == selectedTab
                  ? {/*scroll to the top of the screen*/}
                  : Navigator.of(context).pushNamed(ExploreScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg",
                  height: getProportionateScreenHeight(27.0),
                  width: getProportionateScreenWidth(27.0),
                  color: MenuState.search == selectedTab
                      ? Color(0xFF0591EE)
                      : unSelectedColor),
              onPressed: () => MenuState.search == selectedTab
                  ? {/*scroll to the top of the screen*/}
                  : Navigator.of(context).pushNamed(SearchScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/user.svg",
                  height: getProportionateScreenHeight(27.0),
                  width: getProportionateScreenWidth(27.0),
                  color: MenuState.profile == selectedTab
                      ? Color(0xFF0591EE)
                      : unSelectedColor),
              onPressed: () => MenuState.profile == selectedTab
                  ? {/*scroll to the top of the screen*/}
                  : Navigator.of(context).pushNamed(AuthScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
