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
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading:

          Container(
            color: Colors.black,
            height: 40,
            width: 50,
            child: Image(image: AssetImage('image/baly.png',),
              fit: BoxFit.cover,
            ),
          ),



        actions: [
          IconButton(onPressed: (){},
            padding: EdgeInsets.only(right: 20),
              icon: Icon(Icons.account_balance_wallet_outlined),
          ),

        ],

      ),

      body:DefaultTabController(
        length: 2,

          child: ListView(


            // padding: EdgeInsets.all(20),
            children: [
              TabBar(
                indicatorColor: Colors.blue.shade900,
                  labelColor:Colors.blue.shade900 ,

                  tabs:[
                    Tab(icon: Icon(Icons.home),text: "الرئيسيه",),

                    Tab(icon: Icon(Icons.money_outlined,),text: 'الخصومات',),
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
                            MyCArd("image/balyCar.png",
                              'اوفر طريقه تتنقل\n   بيها لاي مكان',
                            'تكسي'),

                            MyCArd("image/food.png",
                            'توصيل مجاني\n       كل ثلاثاء',
                            'طعام'),

                          ],
                        ),
                      ],
                    ),

                  ],


                ),



              ),





            ],
          ),
      ),



    );
  }
  
  Container MyCArd(
      String MyImage, String MyText, String Label
      ){
    return  Container(
      // padding: EdgeInsets.all(value),
      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
      height: 180,
      width: 450,

        decoration: BoxDecoration(
          color: Color(0xff0001fc),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3),
          topRight: Radius.circular(3),
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child:


      Row(


        children: [
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child:
           Stack(
             children: [
               Container(
                 margin: EdgeInsets.all(30),
                 height: 600,
                 width: MediaQuery.of(context).size.width/3.9,

                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(40),
                     topRight: Radius.circular(40)
                   )
                 ),

               ),

               Padding(
                 padding: const EdgeInsets.only(top: 8.0,right: 8),
                 child: Image.asset(MyImage,
                 width: 170,
                 height: 200,),
               ),

             ],

           ),
         ),


          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Text(Label,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
                ),



              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Text(MyText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white
                ),),
              )

            ],
          )





        ],
      ),

    );

  }


}
