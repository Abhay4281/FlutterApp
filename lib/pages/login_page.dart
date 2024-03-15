import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name ="";
  bool changeButton =  false;

  @override
  Widget build(BuildContext context) {

   
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [

            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.cover,
            ),

            SizedBox(
              height : 20.0,
            ),

            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                ),
                ),

                SizedBox(
              height : 20.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0 , vertical: 16.0),
              child: Column(
                children: [

                TextFormField(
                decoration: InputDecoration(

                  hintText: "Enter username" ,
                   labelText: "Username"),
                   onChanged: (value){
                    name = value;
                    setState(() {});
                   },
              ),
              
               TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password" , 
                  labelText: "Password"),
                  
                  
              ),

              SizedBox(
                height : 40.0,
              ),


            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  
                  alignment: Alignment.center,
                
                  child: changeButton?Icon(Icons.done):Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
                  ),
                  
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    //shape: changeButton ? BoxShape.circle  : BoxShape.rectangle,


                   borderRadius: BorderRadius.circular(changeButton? 50:8),
                  ),
                
                
                ),
              ),
             
                 


              // ElevatedButton(
              //   onPressed: (){
              //     
              //   },
              //    child: Text("Login"),
              //    style: TextButton.styleFrom(minimumSize: Size(150,40)), 
              //    ),
              ],),
            )
          ],
        ),
      ) );
  }
}
