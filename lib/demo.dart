// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   var user="ajsal";
//   var pass=12345;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 200),
//             Center(child: Image.asset("images/cat.webp",width: 150,height: 250,)
//             ),
//            Form(
//              child: Padding(
//                padding: const EdgeInsets.all(15.0),
//                child: TextFormField(
//                 validator: (value) {
//                   if(value!=user || value!.isEmpty){
//                     return "Enter the currect number";
//                   }
//                 } ,
//                 decoration: InputDecoration(
//                   prefix: Icon(Icons.person),
//                   labelText: "User",
//                   labelStyle: TextStyle(fontSize: 25),
//                   hintText: "User Name",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   )
//                 ),
//                ),
//              ),
             
//            ),
//           Padding(
//              padding: const EdgeInsets.all(15.0),
//              child: TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 helperText: "Forgot password?",
//                 helperStyle: TextStyle(
//                   color: Colors.blue
//                 ),
//                 labelText: "Paswword",
//                 labelStyle: TextStyle(fontSize: 25),
//                 hintText: "Password",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 )
//               ),
//              ),
//            ),
//            Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: ElevatedButton(
                  
//                   onPressed: (){}, 
//                   style:
//                    ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   backgroundColor: Colors.blue,
//                   foregroundColor: Colors.white
//                   ),
//                   child: Text("Login"),
//                 ),
//               ),
//             ],
//            )
//           ],
//         ),
//       ),
      
      
//     );
//   }
// }

