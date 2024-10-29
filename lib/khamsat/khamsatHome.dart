import 'package:aontasks/khamsat/program.dart';
import 'package:flutter/material.dart';

class Khamsathome extends StatefulWidget {
  const Khamsathome({super.key});

  @override
  State<Khamsathome> createState() => _KhamsathomeState();
}

class _KhamsathomeState extends State<Khamsathome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration:BoxDecoration(
                  // color: Colors.brown,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: AssetImage('image/KhmsatPhoto/main.PNG')),
                ),
              ),
              SizedBox(height: 70,),
              
              Padding(
                padding: EdgeInsets.only(top:80),
                child: Center(
                  child: Column(
                    children: [
                      Text('اكبر سوق عربي للخدمات المصغره ',
                        style:TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ) ,),
                      
                      SizedBox(height: 10,),
                      
                      Text('انجز اعمالك بسهوله وامان باسعار تبدا من 5 دولار فقط',
                      style: TextStyle(fontSize: 18),),

                      SizedBox(height: 100,),


                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                        TextFormField(

                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                              filled: true,
                            hintText: 'ابحث عن خدمه',



                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,),
                              borderRadius: BorderRadius.zero,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green
                              )
                            ),




                            prefixIcon:Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.zero,
                                 ),
                                  ),
                                  child:
                                  Container(
                                    color: Colors.green,
                                    height: 30,
                                    width: 30,
                                    child: Padding(
                                      padding: EdgeInsets.all(4),
                                      child: Text('بحث',
                                        style: TextStyle(
                                            color: Colors.white
                                        ),),
                                    ),
                                  ),
                                ),
                              ),



                          ),

                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 25,
                            width: 90,
                            color: Colors.white,
                            child:
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('هويه بصريه',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),

                          ),
                          SizedBox(width: 10,),


                          Container(
                            height: 25,
                            width: 90,
                            color: Colors.white,
                            child:
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('ووردبريس',
                                  style: TextStyle(
                                      color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),

                          ),
                          SizedBox(width: 10,),


                          Container(
                            height: 25,
                            width: 90,
                            color: Colors.white,
                            child:
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('تصميم داخلي',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ],
                            ),

                          ),
                          SizedBox(width: 10,),


                          Padding(
                            padding:  EdgeInsets.only(right: 15.0),
                            child: Text('كلمات شائعه',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,

                              ),),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
              
            ],
          ),

          SizedBox(height: 40,),

          Center(
            child: Text('كافه الخدمات الاحترافيه لتطوير اعمالك ',
              style:TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
              ) ,),
          ),



          SizedBox(
            height: 800,
            width: MediaQuery.of(context).size.width,

            child: GridView.count(
              padding: EdgeInsets.all(20),
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 10,
              children: [

                MyCard('image/KhmsatPhoto/11.jpg'),
                MyCard('image/KhmsatPhoto/7.jpg'),

                
              ]


                    ),
                ),




              ],
            ),
          );


  }

  GestureDetector MyCard(
      String MyImage
      ){
    return  GestureDetector(onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Program()));
    },
    child:
    Container(
    // height: MediaQuery.of(context).size.height/4,
    // width: MediaQuery.of(context).size.width/4 ,
    decoration: BoxDecoration(
    image:DecorationImage(image: AssetImage(MyImage,),fit: BoxFit.fitWidth) ,
    ),

    ));
  }

}
