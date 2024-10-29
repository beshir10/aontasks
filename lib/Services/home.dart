
import 'package:aontasks/Services/add.dart';
import 'package:aontasks/Services/allApi.dart';
import 'package:aontasks/Services/edit.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Crud user= Crud();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: FutureBuilder(future: user.get(),
              builder: (context, AsyncSnapshot snapshot){
            if (snapshot.hasData) {
              return Center(
                child: Column(

                  children: [
                    // CircleAvatar(backgroundImage: snapshot.data,),

                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${snapshot.data['firstName']}',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18),),
                        SizedBox(width: 4,),
                        Text('${snapshot.data['lastName']}',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 18),),
                      ],
                    ),

                    Text('${snapshot.data['email']}',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18),),

                    SizedBox(height: 4,),

                    Text('${snapshot.data['role']}',
                      style: TextStyle(color: Colors.grey,
                          fontSize: 18),),

                    SizedBox(height: 40,),

                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('Email'),
                      trailing: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>Edit())
                          );
                        },
                        child: Text(
                          'edit',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),


                    ListTile(
                      leading: Icon(Icons.person_add),
                      title: Text('Add account'),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>Add())
                        );
                      },
                    ),
                    SizedBox(height: 40,),


                    ListTile(
                      leading: Icon(Icons.delete),
                      title: Text('Delete account'),
                      onTap: () {
                        if (snapshot.hasData){
                          user.delete(1);
                          print('deleted');
                        }else{
                          print('error');
                        }
                        
                      },
                    ),


                  ],
                ),
              );



            }else if(snapshot.hasError)
            {
              return Text('error');
            }else {
              return CircularProgressIndicator();
            }

              }

          )

    );
  }
}
