import 'package:adminpannelflutter/helpers/responsiveness.dart';
import 'package:flutter/material.dart';
import '../constants/styles.dart';
import 'custom_text.dart';
AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>

    AppBar(
      leading:  !Responsiveness.isSmallScreen(context)?
      Row(
        children: [
          Container(
            height: 50,width: 50,
            padding: const EdgeInsets.only(left:14),
            child: Image.asset("assets/logo.png",width: 50,height: 50,),
          )
        ],
      ): IconButton(icon: const Icon(Icons.menu,color: Colors.black,),
          onPressed: (){
        key.currentState!.openDrawer();

      }),
  elevation: 0,
  backgroundColor: light,
      title: Row(
        children: [
          Visibility(child: CustomText(text: "Overview", color:
          dark,weight: FontWeight.normal,size: 16,)),
          Expanded(child: Container()),
          IconButton(icon: Icon(Icons.settings,color: dark,),onPressed: (){},),
          Stack(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: dark,)),
              Positioned(
                top: 7,right: 7,
                  child: Container(height: 12,width: 12,padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration( color: active,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: light,width: 2,)),))
            ],
          ),
          Container(
            width: 1,
            height: 22,
              color: lightGrey,

          ),
          const SizedBox(width: 24,),
          CustomText(text: "Season Maharjan", size: 14, color: lightGrey, weight: FontWeight.normal),
          const SizedBox(width: 16,),
          Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: light,
                child: Icon(Icons.person,color: dark,),
              ),
            ),
          )



        ],
      ),
      iconTheme: IconThemeData(color: dark),


);