import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

   
    return Material(
      color: Colors.white,
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
            "Welcome",
            style: TextStyle(
              fontSize: 24,
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
            ),
             TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password" , 
                labelText: "Password"),
            ),
            SizedBox(
              height : 20.0,
            ),
            ElevatedButton(
              onPressed: (){print("Hi Abhay");},
               child: Text("Login"),
               style: TextButton.styleFrom(), 
               ),
            ],),
          )
        ],
      ) );
  }

  
}
