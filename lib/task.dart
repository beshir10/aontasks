import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:


        Stack(
          children: [
            Container(
              height: 200,
              width: 300,

              decoration: BoxDecoration(
                color: Colors.red,
                image:DecorationImage(
                  image: AssetImage('image/KhmsatPhoto/main.PNG'),
                fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black, BlendMode.overlay)
                )
              ),
            ),




          ],
        ),
      ),
    );
  }
}
