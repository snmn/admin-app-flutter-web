import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/controller.dart';
import '../../constants/styles.dart';
import '../../helpers/responsiveness.dart';

class Drivers extends StatelessWidget {
  const Drivers({super.key});



  @override
  Widget build(BuildContext context) {
    return Column(
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
        ))
      ],
    );
  }
}
