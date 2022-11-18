import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class Authentication  extends StatelessWidget {
  const Authentication({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: "Authentication",color: dark,size: 14,weight: FontWeight.bold,),
    );
  }
}
