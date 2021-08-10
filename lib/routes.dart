import 'package:b2b_marketplace/screens/auth/auth.dart';
import 'package:b2b_marketplace/screens/explore/explore_screen.dart';
import 'package:b2b_marketplace/screens/items/new_items_screen.dart';
import 'package:b2b_marketplace/screens/main_menu/main_menu_screen.dart';
import 'package:b2b_marketplace/screens/profile/profile_screen.dart';
import 'package:b2b_marketplace/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  MainMenuScreen.routeName: (context) => MainMenuScreen(),
  ExploreScreen.routeName: (context) => ExploreScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  NewItemsList.routeName: (context) => NewItemsList(),
  AuthScreen.routeName: (context) => AuthScreen(),
};
