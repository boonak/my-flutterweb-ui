import 'package:flutter/material.dart';
import 'package:flutterweb/helpers/responsiveness.dart';

import '../constants/style.dart';
import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
  AppBar( 
    leading: !ResponsiveWidget.isSmallScreen(context) ?
    Row(children: [
      Container(
        padding: const EdgeInsets.only(left: 14.0),
        child: Image.asset("assets/icons/logo.png", width: 28,),
      )
     
    ],) : IconButton(icon: const Icon(Icons.menu), onPressed: (){
      key.currentState!.openDrawer();
    },),
    elevation:0,
    title: Row(
      children: [
        Visibility(child: CustomText(text: "Dash", color: lightGrey, size: 20, weight: FontWeight.bold,)),
        Expanded(child: Container()),
        IconButton(icon: Icon(Icons.settings, color: dark.withOpacity(.7)), onPressed: () {  },),
        Stack(
          children:[
            IconButton(
              icon: Icon(Icons.notifications, color: dark.withOpacity(.7)),
              onPressed: (){}
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: light, width: 2)
                ),
              ),
            ),
          ]
        ),

        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),

        SizedBox(
          width: 24,
        ),

        CustomText(text: "Boon", color: lightGrey),

        SizedBox(
          width: 16,
        ),

        Container(
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.circular(30)),
          child: Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundColor: light,
              child: Icon(Icons.person_outline, color: dark)
            )
          ),
        ),

      ],
    ),
    iconTheme: IconThemeData(color: dark),
    backgroundColor: Colors.transparent,
  );