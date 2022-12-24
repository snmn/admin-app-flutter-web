import 'package:flutter/material.dart';

import 'info_card.dart';
class OverViewCardMediumScreen extends StatelessWidget {
  const OverViewCardMediumScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(title: "Rides in progress", value: "7", topColor: Colors.orange, isActive: true, onTap: (){}),
            SizedBox(width: size.width/64,),
            InfoCard(title: "Packages Delivered", value: "17", topColor: Colors.lightGreen, isActive: false, onTap: (){}),
          ],
        ),
        SizedBox(height: size.width/64,),

        Row(
          children: [
            InfoCard(title: "Cancelled Delivery", value: "3", topColor: Colors.redAccent, isActive: false, onTap: (){}),
            SizedBox(width: size.width/64,),
            InfoCard(title: "Scheduled Deliveries", value: "21", topColor: Colors.lightGreen, isActive: false, onTap: (){}),
          ],

        ),
        SizedBox(height: size.width/64,),
      ],
    );
  }
}
