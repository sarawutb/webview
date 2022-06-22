import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter/services.dart';

void main() 
{
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Colors.blue.shade900,
  statusBarBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.light
));
runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        appBarTheme: Theme.of(context)
        .appBarTheme
        .copyWith(brightness: Brightness.dark),
      ),
      color: Colors.red,
      title: "test",
      themeMode:ThemeMode.system,
      home: Home(),
    );
  }
}