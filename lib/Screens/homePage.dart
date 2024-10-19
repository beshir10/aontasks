import 'package:aontasks/main.dart';
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
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text('Home page'),

        ),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back_ios)),
      ),

      body:DefaultTabController(length: 2,

          child: ListView(


            // padding: EdgeInsets.all(20),
            children: [
              TabBar(
                  tabs:[

                    Tab(
                      
                      icon: Icon(Icons.home),text: "home page",),

                    Tab(icon: Icon(Icons.money_outlined),),
                  ]),

              SizedBox(
                 height: MediaQuery.of(context).size.height,
                child:
                TabBarView(
                  children: [

                    ListView(
                      children: [
                        Column(
                          children: [
                            MyCArd(
                                'image/taxiBaly.png'
                            ),

                            MyCArd('image/taxiBaly.png'),
                            MyCArd('image/taxiBaly.png')

                          ],
                        ),
                      ],
                    ),],


                ),



              ),





            ],
          ),
      ),



    );
  }
  
  Container MyCArd(
      String MyImage,
      ){
    return  Container(
      margin: EdgeInsets.only(top: 20),
      height: 200,
      width: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        color: Colors.cyanAccent
      ),
      child:


      Row(


        children: [
         Stack(
           children: [
             Container(
               margin: EdgeInsets.all(30),
               height: 100,
               width: MediaQuery.of(context).size.width/3,

               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(10),
                   topRight: Radius.circular(10)
                 )
               ),

             ),
             Container(
               // height: 100,
               // width: MediaQuery.of(context).size.width/3,
               // color: Colors.white,
               // child:  Image(image: AssetImage(MyImage)),

             ),


           ],

         ),





        ],
      ),

    );

  }


}
