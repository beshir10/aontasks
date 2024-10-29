import 'package:aontasks/auth/regester.dart';
import 'package:aontasks/Screens/homePage.dart';
import 'package:aontasks/auth/loginPage.dart';
import 'package:aontasks/bnb.dart';
import 'package:aontasks/khamsat/details.dart';
import 'package:aontasks/khamsat/khamsatHome.dart';
import 'package:aontasks/khamsat/program.dart';
import 'package:aontasks/task.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Task(),
    );
  }
}
