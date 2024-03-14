import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key}); not necessary here


  @override
  Widget build(BuildContext context) {

   

    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: { // routes likha h to home: homePage( ) ye htana pdhega verna chlega nhi
        "/":(context) => LoginPage(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage()
      },
    );
  }

  
}
