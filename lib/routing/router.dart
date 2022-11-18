
import 'package:adminpannelflutter/pages/Authentication/authentication.dart';
import 'package:adminpannelflutter/routing/routes.dart';
import 'package:flutter/material.dart';

import '../pages/Clients/clients.dart';
import '../pages/Drivers/drivers.dart';
import '../pages/OverView/overview.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name){
    case OverViewPageRoute:
      return _getPageRoute(const OverView());
    case DriversPageRoute:
      return _getPageRoute(const Drivers());
    case ClientsPageRoute:
      return _getPageRoute(const Clients());
    // case AuthenticationPageRoute:
    //   return _getPageRoute(const Authentication());
    default:
      return _getPageRoute(const OverView());

  }

}

PageRoute _getPageRoute (Widget child){
  return MaterialPageRoute(builder: (context) => child);
}