// import 'package:b2b_marketplace/screens/explore/explore_screen.dart';
// import 'package:b2b_marketplace/screens/main_menu/components/body.dart';
// import 'package:b2b_marketplace/screens/main_menu/components/header_search.dart';
// import 'package:b2b_marketplace/screens/main_menu/components/new_product_list.dart';
// import 'package:b2b_marketplace/screens/main_menu/main_menu_screen.dart';
// import 'package:b2b_marketplace/screens/profile/profile_screen.dart';
// import 'package:b2b_marketplace/screens/search/search_screen.dart';
// import 'package:flutter/material.dart';

// class Testing extends StatefulWidget {
//   Testing({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _TestingState createState() => _TestingState();
// }

// class _TestingState extends State<Testing> {
//   int bottomSelectedIndex = 0;

//   List<BottomNavigationBarItem> buildBottomNavBarItems() {
//     return [
//       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Red'),
//       BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Blue'),
//       BottomNavigationBarItem(icon: Icon(Icons.info_outline), label: 'Yellow')
//     ];
//   }

//   PageController pageController = PageController(
//     initialPage: 0,
//     keepPage: true,
//   );

//   Widget buildPageView() {
//     return PageView(
//       controller: pageController,
//       onPageChanged: (index) {
//         pageChanged(index);
//       },
//       children: <Widget>[
//         Qu(),
//         Explore(),
//         Search(),
//         Profile(),
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
//       appBar: AppBar(
//         title: Text("Title"),
//       ),
//       body: buildPageView(),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: bottomSelectedIndex,
//         onTap: (index) {
//           bottomTapped(index);
//         },
//         items: buildBottomNavBarItems(),
//       ),
//     );
//   }
// }

// class Qu extends StatefulWidget {
//   @override
//   _QuState createState() => _QuState();
// }

// class _QuState extends State<Qu> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Column(
//         children: [
//           AppBar(
//             bottom: TabBar(
//               labelStyle: TextStyle(fontSize: 18.0), //For Selected tab
//               unselectedLabelStyle:
//                   TextStyle(fontSize: 13.0), //For Un-selected Tabs
//               tabs: [
//                 Tab(
//                   text: "Товары",
//                 ),
//                 Tab(text: "Магазины")
//               ],
//             ),
//             automaticallyImplyLeading: false,
//             // title: MainMenuHeader(),
//           ),
//           TabBarView(
//             children: [
//               Text("23"),
//               Text("12"),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Blue extends StatefulWidget {
//   @override
//   _BlueState createState() => _BlueState();
// }

// class _BlueState extends State<Blue> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blueAccent,
//     );
//   }
// }

// class Yellow extends StatefulWidget {
//   @override
//   _YellowState createState() => _YellowState();
// }

// class _YellowState extends State<Yellow> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.yellowAccent,
//     );
//   }
// }
