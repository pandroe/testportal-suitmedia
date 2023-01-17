import 'package:flutter/material.dart';
import 'package:testportal_suitmedia/views/first_screen/views/first_screen.dart';

import 'views/second_screen/views/second_screen.dart';
import 'views/third_screen/views/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
      routes: {
        FirstScreen.routeName:(context) => FirstScreen(),
        SecondScreen.routeName:(context) => SecondScreen(),
        ThirdScreen.routeName:(context) => ThirdScreen(),
      },
    );
  }
}



