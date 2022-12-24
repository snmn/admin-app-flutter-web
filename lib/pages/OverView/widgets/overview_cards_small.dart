import 'package:flutter/material.dart';

import 'info_card_small.dart';

class OverViewCardSmallScreen extends StatelessWidget {
  const OverViewCardSmallScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          InfoCardSmall(title: "Rides in progress", value: "7", topColor: Colors.orange, isActive: true, onTap: (){}),
          SizedBox(height: size.width/64,),
          InfoCardSmall(title: "Packages Delivered", value: "17", topColor: Colors.lightGreen, isActive: false, onTap: (){}),
          SizedBox(height: size.width/64,),
          InfoCardSmall(title: "Cancelled Delivery", value: "3", topColor: Colors.redAccent, isActive: false, onTap: (){}),
          SizedBox(height: size.width/64,),
          InfoCardSmall(title: "Scheduled Deliveries", value: "21", topColor: Colors.lightGreen, isActive: false, onTap: (){}),
          SizedBox(height: size.width/64,),

        ],
      ),
    );
  }
}
