import 'package:flutter/material.dart';
import 'package:project_learn/helpers/responsiveness.dart';
import 'package:project_learn/widgets/large_screen.dart';
import 'package:project_learn/widgets/side_menu.dart';
import 'package:project_learn/widgets/small_screen.dart';
import 'package:project_learn/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: LargeScreen()),
    );
  }
}
