import 'package:flutter/material.dart';
import 'package:flutter_yoga1/routing_constants.dart';
import 'home_view.dart';
import 'login_view.dart';
import 'position3_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    case Position3ViewRoute:
      return MaterialPageRoute(builder: (context) => Position3View());
    default:
      return MaterialPageRoute(builder: (context) => HomeView());
  }
}