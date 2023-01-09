import 'package:flutter/material.dart';
import 'package:flutter_arc/app/app.locator.dart';
import 'package:flutter_arc/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
