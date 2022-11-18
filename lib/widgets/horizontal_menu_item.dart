
import 'package:adminpannelflutter/constants/controller.dart';
import 'package:adminpannelflutter/constants/styles.dart';
import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItem({super.key, required this.itemName, required this.onTap});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap:(){
        onTap();
      },
      onHover: (value){
        value?
         menuController.onHover(itemName!):
         menuController.onHover("not hovering");
      },
      child: Obx(()=> Container(
        color:  menuController.isHovering(itemName!)!? lightGrey.withOpacity(.1) :Colors.transparent ,
        child: Row(
          children: [
            Visibility(visible: menuController.isHovering(itemName!)!|| menuController.isActive(itemName!)!,maintainState: true,
              maintainAnimation: true,maintainSize: true,
              child: Container(width: 6,height: 40,color: dark,)
              ,
            ),
            SizedBox(width: size.width/80,),
            Padding(padding: const EdgeInsets.all(6),child: menuController.returnIconFor(itemName!),),
            (!menuController.isActive(itemName!))?
              Flexible(child: CustomText(text: itemName!,color: menuController.isHovering(itemName!)!? dark :  lightGrey, size: 12,weight: FontWeight.normal,))
            : Flexible(
              child: CustomText(text: itemName!,
                color: dark,size: 12,weight: FontWeight.bold,),
            )


          ],
        ),
      )),
    );

  }
}
