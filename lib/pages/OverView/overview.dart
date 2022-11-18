import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: "OverView",color: dark,size: 14,weight: FontWeight.bold,),
    );
  }
}
