import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class Clients extends StatelessWidget {
  const Clients({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: "Clients",color: dark,size: 14,weight: FontWeight.bold,),
    );
  }
}
