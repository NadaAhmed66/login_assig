import 'package:flutter/material.dart';

class login_screen_App extends StatelessWidget {
  const login_screen_App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Login Screen App",style: TextStyle(color: Colors.white),
       
        )),
      body:Container(
        padding: EdgeInsets.all(10),
      child:  Column(
        
        children: [
          Text("CodePlayon",style: TextStyle(fontSize: 40,color: Colors.blue),),
          SizedBox(height: 5,),
          TextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return "write any letter";
              }
            },
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              hintText: "User Name ",
              border: OutlineInputBorder(    
                borderSide: BorderSide(color: Colors.black),  
              ),
            ),         
          ),
            SizedBox(height: 20,),
          TextFormField(
            
            decoration: InputDecoration(
              
              hintText: "Password ",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black,width: 2),
              ),
            ),         
          ),
          SizedBox(height: 10,),
          Text("Forget Password"),
          SizedBox(height: 10,),
          Container(
            width: 400,
            height: 55,
            color: Colors.blue,
            padding: EdgeInsets.all(10),
            child: MaterialButton(onPressed: (){},
            child: Text("Login",
            style: TextStyle(color: Colors.white),),
            ),
          ),
          SizedBox(height: 10,),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Does not have account?"),
                SizedBox(height: 5,),
                MaterialButton(onPressed: (){},
                child: Text("Sign in",style: TextStyle(color: Colors.blue),),
                )
              ],
            ),
        
        ],
      ),
      )
    );
  }
}