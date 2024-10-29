import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
        GestureDetector(onTap: (){
          print('hello');
        },
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width-70,
              color: Colors.blueGrey,

            child: Column(
              children: [
                Expanded(flex: 1,
                    child: Image.asset('image/KhmsatPhoto/main.PNG',
                    fit: BoxFit.fitHeight,),

                ),

                Expanded(
                flex: 1,
                    child:
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('helooo'),
                          ],
                        ),
                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('hiuiiii'),
                          ],
                        ),


                      
                      ],
                      
                      
                      
                    )
                )
              ],
            ),

          ),
        ),
        ],

      ),
    );
  }
}
