import 'package:adminpannelflutter/helpers/responsiveness.dart';
import 'package:adminpannelflutter/widgets/large_screen.dart';
import 'package:adminpannelflutter/widgets/side_menu.dart';
import 'package:adminpannelflutter/widgets/small_screen.dart';
import 'package:adminpannelflutter/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {

  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldkey),
      drawer: const Drawer(child: SideMenu(),),
      body: const Responsiveness(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
