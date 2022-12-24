import 'package:adminpannelflutter/constants/controller.dart';
import 'package:adminpannelflutter/helpers/responsiveness.dart';
import 'package:adminpannelflutter/pages/OverView/widgets/overview_cards_large.dart';
import 'package:adminpannelflutter/pages/OverView/widgets/overview_cards_medium.dart';
import 'package:adminpannelflutter/pages/OverView/widgets/overview_cards_small.dart';
import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/styles.dart';
import 'widgets/revenue_section_large.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(()=> Row(
          children: [
             Container(margin: EdgeInsets.only(top:
             Responsiveness.isSmallScreen(context)?56:10),
             child: Padding(
               padding: const EdgeInsets.only(left:15.0,top: 0  ),
               child: CustomText(text: menuController.activeItem.value,size: 24,weight: FontWeight.bold ,color: dark,),
             ),)
          ],
        )),
        
        Expanded(child: ListView(
          children: [
             Responsiveness.isLargeScreen(context) ?const OverViewCardLargeScreen() :(
             Responsiveness.isSmallScreen(context)? const OverViewCardSmallScreen() : const OverViewCardMediumScreen()
             ),
          //  const x()
          ],
        )),
        Wrap(
          children: const [
             RevenueSection(),
          ],
        ),
      ],
    );
  }
}
