import 'package:flutter/material.dart';
import 'package:flutterweb/layout.dart';
import 'package:flutterweb/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/style.dart';
import '../../routing/routes.dart';

class AuthenticationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 12),
                  child: Image.asset("assets/icons/logo.png"),),
                  Expanded(child: Container())
                ],
              ),

              SizedBox(
                height: 30,
              ),

              Row(children: [
                Text("Login", style: GoogleFonts.roboto(
                  fontSize: 30, fontWeight: FontWeight.bold
                ),)
              ],),

              Row(
                children: [
                  CustomText(text: "Welcome back to the admin panel",
                  color: lightGrey)
                ],
              ),

              SizedBox(height: 15),
              
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "abc@domain.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                )
                ),

                  SizedBox(height: 15),
              
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "123",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                )
                ),

                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value){},),
                        const CustomText(text: "Remember me",)
                      ],
                    ),

                    CustomText(text: "Forget Password",
                    color: active)
                  ],
                ),

                 SizedBox(height: 15),

                 InkWell(
                   onTap:(){
                     Get.offAllNamed(RootRoute);
                   },
                   child: Container(
                     decoration: BoxDecoration(
                       color: active,
                       borderRadius: BorderRadius.circular(20)
                     ),
                     alignment: Alignment.center,
                     width: double.maxFinite,
                     padding: EdgeInsets.symmetric(vertical: 16),
                     child: CustomText(text: "Login", color: Colors.white),
                   ),
                 ),

                 SizedBox(height: 15),

                 RichText(text: TextSpan(children: [
                   TextSpan(text: "Do not have admin credentials? "),
                   TextSpan(text: "Request credentials", style: TextStyle(color: active)),
                 ])),
              

            ],
          ),
        )
        
      ),
    );
  }
}

class OutlineInputborder {
}