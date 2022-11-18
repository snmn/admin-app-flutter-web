import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/controller.dart';
import '../constants/styles.dart';
import 'custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const VerticalMenuItem({super.key, required this.itemName, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        onTap();
      },
      onHover: (value){
        value?
        menuController.onHover(itemName):
        menuController.onHover("not hovering");
      },
      child: Obx(()=>Container(
        color:  menuController.isHovering(itemName)? lightGrey.withOpacity(.1) :Colors.transparent ,
        child: Row(
          children: [
            Visibility(visible: menuController.isHovering(itemName)||menuController.isActive(itemName),
              // ignore: sort_child_properties_last
              child: Container(width: 3,height: 72,color: dark,)
              ,maintainState: true,
              maintainAnimation: true,maintainSize: true,
            ),
            Expanded(child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(padding: const EdgeInsets.all(6),child: menuController.returnIconFor(itemName),),
                (!menuController.isActive(itemName))?
                Flexible(child: CustomText(text: itemName,color: menuController.isHovering(itemName)? dark :  lightGrey, size: 12,weight: FontWeight.normal,))
                    : Flexible(
                  child: CustomText(text: itemName,
                    color: dark,size: 12,weight: FontWeight.bold,),
                )
            ],))
          ],
        ),


      )),
    );
  }
}
