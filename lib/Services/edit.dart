import 'package:aontasks/Services/allApi.dart';
import 'package:flutter/material.dart';

 class Edit extends StatefulWidget {
   const Edit({super.key});

   @override
   State<Edit> createState() => _EditState();
 }

 class _EditState extends State<Edit> {

   TextEditingController email=TextEditingController();
   Crud user= Crud();



   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         automaticallyImplyLeading: true,
       ),
       body:
       Column(


         children: [


           Center(
             child: TextFormField(
               controller: email,
               decoration: InputDecoration(

                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30,),
                     borderSide: BorderSide(width: 1,)
                 ),
                 border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                 labelText: " email ",

               ),
             ),
           ),

           ElevatedButton(onPressed: (){
             if (email.text.isNotEmpty){
               user.put(email.text);
             }else {
               print('error');
             }
           },
               child: Text('Edit'))

         ],


       ),

     );


   }
 }
