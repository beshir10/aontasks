import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,

      appBar: AppBar(
        title: Center(
          child: Text('Home page'),
        ),
      ),

      body: Center(
        child: Text('Welcome',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        fontSize: 37),),
      ),

    );
  }
}
