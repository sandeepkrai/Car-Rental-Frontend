import 'package:dbs_project/Constants/constantColors.dart';
import 'package:dbs_project/views/signIn.dart';
import 'package:dbs_project/views/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DBS Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff222831),),
      ),
      home: signIN()
    );
  }
}


