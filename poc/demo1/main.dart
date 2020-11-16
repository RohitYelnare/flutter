import 'package:flutter/material.dart';
import 'package:flutter_yoga1/routing_constants.dart';
import 'router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga Demo',
        onGenerateRoute: router.generateRoute,
        initialRoute: HomeViewRoute,
      );

  }
}
