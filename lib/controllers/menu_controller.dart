import 'package:adminpannelflutter/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/styles.dart';

class MenuController extends GetxController{
  static MenuController instance = Get.find();

  var activeItem = OverViewPageRoute.obs;
  var hoverItem = " ".obs;

  changeActiveitemTo(String itemName){
    activeItem.value = itemName;
  }

  onHover(String itemName){
    if(!isActive(itemName))hoverItem.value = itemName;
  }

  bool isActive(String itemName){
    bool val = false;

    if(activeItem.value == itemName){
      val = true;
    }
    return val;
  }

  bool isHovering(String itemName){
    bool val = false;

    if(hoverItem.value == itemName){
      val= true;
    }
    return val;
  }

  Widget returnIconFor(String itemName){
    switch(itemName){
      case OverViewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined , itemName);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon( Icons.exit_to_app, itemName);
    }
  }
  Widget _customIcon(IconData iconData, String itemName){
    if(isActive(itemName)) return Icon(iconData,size: 22,color: dark,);

    return Icon(iconData,color: isHovering(itemName)? dark : lightGrey,);
  }
}