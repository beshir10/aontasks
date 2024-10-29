import 'package:flutter/material.dart';

class Program extends StatefulWidget {
  const Program({super.key});

  @override
  State<Program> createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body:
      ListView(
        children: [
          Container(
            height: 400,
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('برمجه و تطوير',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 50,),

                  Center(
                    child: Text('استعن بخدمات افضل المبرمجين لتنفيذ افكارك و تحويلها الى مشاريع حقيقيه',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600
                      ),),
                  ),
                ],
              ),
            ),
          ),


         SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Text('تصنيفات تصميم شائعه',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),),
            ],
          ),

          SizedBox(height: 60,),
          SizedBox(height: 500,
          child: ListView(
            children: [
              card('انشاء موقع الكتروني',
             'image/KhmsatPhoto/coding.png' ),
              card('انشاء موقع ووردبريس',
              'image/KhmsatPhoto/web.png'),
              card('انشاء متجر الكتروني',
              'image/KhmsatPhoto/coding.png'),

            ],
          ),)
        ],
      ),
    );
  }

  Container card(
      String text, String image
      ){
    return Container(
      margin: EdgeInsets.all(20),
      height: 80,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),),
          SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ImageIcon(size: 50,
                AssetImage(image,)),
          ),


        ],
      ),


    );
  }

}
