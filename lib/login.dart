import 'package:flutter/material.dart';
import 'package:loggin_app/home.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey=GlobalKey<FormState>();
  var user="ajsal";
  var pass="12345";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 200),
            Center(child: Image.asset("images/cat.png",width: 150,height: 250,)
            ),
            Form(
              key: formkey,
              child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (value) {
                        if(value==null ||value.isEmpty){
                          return "Enter a username";
                        }else if(value!=user){
                          return "incorrect username";
                        }
                        else{
                          return null;
                        }
                      } ,
                      decoration: InputDecoration(
                        prefix: Icon(Icons.person),
                        labelText: "User",
                        labelStyle: TextStyle(fontSize: 25),
                        hintText: "User Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    validator: (value) {
                      if(value==null ||value.isEmpty){
                        return "Enter the  password";
                      }else if(value!=pass){
                        return "incorrect  password";
                      }
                      else{
                        return  null;
                      }
                    },
                     obscureText: true,
                     decoration: InputDecoration(
                  helperText: "Forgot password?",
                  helperStyle: TextStyle(
                    color: Colors.blue
                  ),
                  labelText: "Paswword",
                  labelStyle: TextStyle(fontSize: 25),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                                ),
                  ),
                ),
                 Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  
                  onPressed: (){
                    if (formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Login Successful')));
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  }
                  }, 
                  style:
                   ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
                  ),
                  child: Text("Login"),
                ),
              ),
            ],
           )
              ],
            ),
            
            )
          
          ],
        ),
      ),
      
      
    );
  }
}

