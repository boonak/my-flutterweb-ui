import 'package:flutter/material.dart';
import 'package:flutterweb/pages/overview/overview.dart';
import 'package:flutterweb/routing/routes.dart';

import '../pages/clients/clients.dart';
import '../pages/drivers/drivers.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name){
    case OverViewPageRoute:
      return _getPageRoute(OverviewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}