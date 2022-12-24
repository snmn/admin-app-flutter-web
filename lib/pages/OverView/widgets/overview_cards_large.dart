import 'package:adminpannelflutter/pages/OverView/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverViewCardLargeScreen extends StatelessWidget {
  const OverViewCardLargeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InfoCard(title: "Rides in progress", value: "7", topColor: Colors.orange, isActive: true, onTap: (){}),
        SizedBox(width: size.width/64,),
        InfoCard(title: "Packages Delivered", value: "17", topColor: Colors.lightGreen, isActive: false, onTap: (){}),
        SizedBox(width: size.width/64,),
        InfoCard(title: "Cancelled Delivery", value: "3", topColor: Colors.redAccent, isActive: false, onTap: (){}),
        SizedBox(width: size.width/64,),
        InfoCard(title: "Scheduled Deliveries", value: "21", topColor: Colors.lightGreen, isActive: false, onTap: (){}),
        SizedBox(width: size.width/64,),


      ],
    );
  }
}
