import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterweb/controllers/menu_controller.dart';
import 'package:flutterweb/layout.dart';
import 'package:flutterweb/pages/404/error.dart';
import 'package:flutterweb/pages/authentication/authentication.dart';
import 'package:flutterweb/routing/routes.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants/style.dart';
import 'controllers/navigation_controller.dart';

void main(){
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key key }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(name: "/not-found", page: () => PageNotFound(),
      transition: Transition.fadeIn),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(name: AuthenticationPageRoute, page: () => AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
        }),
        primaryColor: Colors.blue,
      ),
      
    );
  }
}