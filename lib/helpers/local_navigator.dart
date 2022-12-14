import 'package:flutter/material.dart';
import 'package:flutterweb/constants/controllers.dart';
import 'package:flutterweb/routing/router.dart';
import 'package:flutterweb/routing/routes.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,

);