import 'package:adminpannelflutter/routing/router.dart';
import 'package:adminpannelflutter/routing/routes.dart';
import 'package:flutter/widgets.dart';

import '../constants/controller.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);