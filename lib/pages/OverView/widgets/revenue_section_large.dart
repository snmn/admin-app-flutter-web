import 'package:adminpannelflutter/constants/styles.dart';
import 'package:adminpannelflutter/pages/OverView/widgets/barchart.dart';
import 'package:adminpannelflutter/pages/OverView/widgets/revenue_info.dart';
import 'package:adminpannelflutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSection extends StatelessWidget {

  
  const RevenueSection({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
     width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/1.6,
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0,6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12,

          )
        ],border: Border.all(width: .5,color: lightGrey),
      ),
      child:
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(text: "Revenue Chart", size: 20, color: lightGrey, weight: FontWeight.bold),
              SizedBox(
                height: 120,
                width: 700,
                child: SimpleBarChart.withSampleData(),
              ),


                Row(children:  [
                  const RevenueInfo(title: "Today's Revenue", amount: "23"),
                  Container(
                    width: 1,
                    height: 100,
                    color: lightGrey,
                  ),
                  const RevenueInfo(title: "Last 7 Days", amount: "150"),

                ],),
                  const SizedBox(height: 30,),


            ],
          )

    );
  }
}
