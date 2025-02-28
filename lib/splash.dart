import 'package:flutter/material.dart';
import 'login.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState(){
    due();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
          
            child: Image.asset("images/cat.png", width: 200,height: 300),
          ),
          Center(
            child: Text(
              "Kitty Serivice",
              style: TextStyle(
                fontSize: 40,
              ),
              ),
          )
        ],
      ),

    );
    
  }

  Future<void>due()async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LoginPage()));

      
    }
}