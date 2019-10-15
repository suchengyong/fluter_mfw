import 'package:flutter/material.dart';
import 'package:flutter_mfw/tabbar/tabbar_page.dart';

final routers = {"/": (context) => TabbarPage()};

var onGenerateRoute = (RouteSettings settings) {

  final String name = settings.name;
  final Function pageContentBuilder = routers[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
      MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};