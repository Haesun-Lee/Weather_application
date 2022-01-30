import 'package:flutter/material.dart';

import 'screen/homescreen.dart';
import 'screen/settingscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/setting': (_) => SettingScreen(),
      },
    );
  }
}
