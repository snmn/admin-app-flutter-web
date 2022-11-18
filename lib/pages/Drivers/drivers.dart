import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class Drivers extends StatelessWidget {
  const Drivers({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: "Drivers",color: dark,size: 14,weight: FontWeight.bold,),
    );
  }
}
