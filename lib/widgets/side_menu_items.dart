import 'package:adminpannelflutter/helpers/responsiveness.dart';
import 'package:adminpannelflutter/widgets/horizontal_menu_item.dart';
import 'package:adminpannelflutter/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;

  const SideMenuItem({super.key, required this.itemName, required this.onTap});
  @override
  Widget build(BuildContext context) {
  if (Responsiveness.isCustomScreen(context)){
    return VerticalMenuItem(itemName: itemName, onTap: onTap);
  }else{
    return HorizontalMenuItem(itemName: itemName,onTap: onTap,);
  }
  }
}
