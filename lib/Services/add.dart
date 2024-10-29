import 'package:aontasks/Services/allApi.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
TextEditingController firsname=TextEditingController();
TextEditingController lastname=TextEditingController();
TextEditingController email=TextEditingController();

  Crud add=Crud();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [

           TextFormField(
              controller: firsname,
              decoration: InputDecoration(

                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30,),
                    borderSide: BorderSide(width: 1,)
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                labelText: " firstname ",

              ),
            ),
          SizedBox(height: 40,),
          TextFormField(
            controller: lastname,
            decoration: InputDecoration(

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30,),
                  borderSide: BorderSide(width: 1,)
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
              labelText: " lastname ",

            ),
          ),
          SizedBox(height: 40,),

          TextFormField(
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


          ElevatedButton(onPressed: (){
            if (email.text.isNotEmpty){
              add.post(email.text,firsname.text,lastname.text);
            }else {
              print('error');
            }
          },
              child: Text('Add'))

        ],


      ),
    );
  }
}
