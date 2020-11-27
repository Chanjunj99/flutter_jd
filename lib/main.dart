import 'package:flutter/material.dart';
import 'pages/tabs/Tabs.dart';
import 'router/router.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter应用',
      initialRoute: '/',
      onGenerateRoute:onGenerateRoute
    );
  }
}