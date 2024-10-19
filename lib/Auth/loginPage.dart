import 'package:aontasks/auth/regester.dart';
import 'package:aontasks/Screens/homePage.dart';
import 'package:aontasks/bnb.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool PassTogle=true;
  TextEditingController email =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Log In',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              controller:email ,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Email sddress',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            ),),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,),
            child: TextFormField(
              obscureText: PassTogle,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
                suffix: InkWell(onTap: (){
                  setState((){
                    PassTogle=!PassTogle;});},
                  child: Icon(PassTogle?Icons.visibility : Icons.visibility_off),),
              ),),
          ),



          Padding(
            padding:  EdgeInsets.only(right: 20,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('Forgot Password?')],
            ),
          ),
          SizedBox(height: 25,),
          ElevatedButton(onPressed:(){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>Homepage())
            );
          },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade800,
                  fixedSize: Size(MediaQuery.of(context).size.width-40, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
              ),
              child: Text('Login',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15
                ),)),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont have an account?'),
              SizedBox(width: 3,),

              InkWell(onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>BNB())
                );
              },
                child:Text('Sign Up',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade800
                  ),) ,),

            ],
          ),

          SizedBox(height: 100,),



          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width-40, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  backgroundColor: Colors.blue.shade900
              ),
              child:


              Text('Continue With Facebook',
                style: TextStyle(
                    color: Colors.white
                ),)
          ),
          SizedBox(height: 20,),


          ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width-40, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),

                  ),
                  backgroundColor: Colors.white
              ),
              child:


              Text('Continue With Google',
                style: TextStyle(
                    color: Colors.grey.shade600
                ),)
          ),

        ],
      ),
    );;
  }
}
