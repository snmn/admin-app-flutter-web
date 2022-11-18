import 'package:adminpannelflutter/constants/controller.dart';
import 'package:adminpannelflutter/constants/styles.dart';
import 'package:adminpannelflutter/helpers/responsiveness.dart';
import 'package:adminpannelflutter/routing/routes.dart';
import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:adminpannelflutter/widgets/side_menu_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: light,
      child: ListView(children:[
        if(Responsiveness.isSmallScreen(context))
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(width: size.width/48 ,),
                  Padding(padding: const EdgeInsets.only(right:12),child:
                    Image.asset("assets/logo.png",height: 40,width: 40,),),
                  Flexible(child: CustomText(text: "Dash",size: 16, weight: FontWeight.bold ,color: active,)),
                  SizedBox(width: size.width/48,)
                ],
              ),

            ],
          ),
        Divider(color: lightGrey.withOpacity(.1),),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItems.map((itemName) => SideMenuItem(
              itemName: itemName == AuthenticationPageRoute ? "LogOut": itemName,

              onTap: (){
                if(itemName == AuthenticationPageRoute){
                  //go to authentication page
                }
                if(!menuController.isActive(itemName)){
                  menuController.changeActiveitemTo(itemName);
                  if(Responsiveness.isSmallScreen(context)){
                    Get.back();
                    // go to item name route
                  }

                }
              })).toList(),
        )
      ]),

    );
  }
}
