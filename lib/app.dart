// import 'package:b2b_marketplace/components/bottom_nav_bar.dart';
// import 'package:b2b_marketplace/constants.dart';
// import 'package:b2b_marketplace/screens/explore/explore_screen.dart';
// import 'package:b2b_marketplace/screens/main_menu/components/body.dart';
// import 'package:b2b_marketplace/screens/main_menu/components/header_search.dart';
// import 'package:b2b_marketplace/screens/main_menu/main_menu_screen.dart';
// import 'package:b2b_marketplace/screens/search/search_screen.dart';
// import 'package:b2b_marketplace/setting_size.dart';
// import 'package:flutter/material.dart';
// import 'package:b2b_marketplace/screens/profile/profile_screen.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'screens/main_menu/components/new_product_list.dart';

// class App extends StatefulWidget {
//   App({Key key}) : super(key: key);

//   @override
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<App> {
//   int bottomSelectedIndex = 0;

//   PageController pageController = PageController(
//     initialPage: 0,
//     keepPage: true,
//   );

//   Widget buildPageView() {
//     return PageView(
//       physics: NeverScrollableScrollPhysics(),
//       controller: pageController,
//       onPageChanged: (index) {
//         pageChanged(index);
//       },
//       children: <Widget>[
//         MainMenuScreen(),
//         ExploreScreen(),
//         SearchScreen(),
//         ProfileScreen(),
//       ],
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   void pageChanged(int index) {
//     setState(() {
//       bottomSelectedIndex = index;
//     });
//   }

//   void bottomTapped(int index) {
//     setState(() {
//       bottomSelectedIndex = index;
//       pageController.animateToPage(index,
//           duration: Duration(milliseconds: 500), curve: Curves.ease);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: bgColor,
//       body: buildPageView(),

//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () =>
//       //       Navigator.of(context).pushNamed(SplashScreen.routeName),
//       // ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: bottomSelectedIndex,
//         onTap: (index) {
//           bottomTapped(index);
//         },
//         items: buildBottomNavBarItems(),
//       ),
//     );
//   }

//   List<BottomNavigationBarItem> buildBottomNavBarItems() {
//     return [
//       BottomNavigationBarItem(
//         icon: SvgPicture.asset(
//           "assets/icons/home.svg",
//           height: getProportionateScreenHeight(27.0),
//           width: getProportionateScreenWidth(27.0),
//         ),
//         label: "1",
//       ),
//       BottomNavigationBarItem(
//         icon: SvgPicture.asset(
//           "assets/icons/shopping-bag.svg",
//           height: getProportionateScreenHeight(27.0),
//           width: getProportionateScreenWidth(27.0),
//         ),
//         label: "2",
//       ),
//       BottomNavigationBarItem(
//         icon: SvgPicture.asset(
//           "assets/icons/search.svg",
//           height: getProportionateScreenHeight(27.0),
//           width: getProportionateScreenWidth(27.0),
//         ),
//         label: "3",
//       ),
//       BottomNavigationBarItem(
//         icon: SvgPicture.asset(
//           "assets/icons/user.svg",
//           height: getProportionateScreenHeight(27.0),
//           width: getProportionateScreenWidth(27.0),
//         ),
//         label: "4",
//       ),
//     ];
//   }
// }
