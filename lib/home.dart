import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loggin_app/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Builder(
  builder: (context) => IconButton(
    iconSize: 35,
    icon: Icon(Icons.account_circle,
    ),
    onPressed: () {
      Scaffold.of(context).openDrawer();
    },
  ),
),

        title: Center(child: Text(
          "Home",
        style: TextStyle(
          fontSize: 30,
        ),
        )),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){},
          iconSize: 35,
           icon: Icon(Icons.search))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Ajsal",
              style: TextStyle(
                color: Colors.black,
              ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),

              
              accountEmail: Text("ajsal456@gmail.com",
              style: TextStyle(
                color: Colors.black,
              ),
              ),
              currentAccountPicture: CircleAvatar(     
              backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_1280.jpg"),
              ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(onPressed: (){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false,);
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.cyan[100]),
                    ),
                     child: Text("Logout")
                     ),
                ),
              ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20,),
              Text("Service",
              style: GoogleFonts.bebasNeue(fontSize: 50),
              
              ),
              Image.asset(
                "images/cat_home.png",
                height: 500,
                ),
                Row(
                  children: [
                    Flexible(
                      
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset("images/cat_bath.png",width: 300,height: 400,)),
                            
                            
                            ListTile(
                              title: Text(
                                "Grooming",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                subtitle: Text("Keep your cat fresh & fabulous! \nBook professional grooming services including bathing, nail trimming, and fur styling."),
                                

                            ),
                             Card(
                               child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                  
                                   
                                 ],
                               ),
                             )
                          ],
                        ),
                      ),
                      
                    )
                  ],
                  
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Flexible(
                      
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset("images/cat_food.png",width: 300,height: 400,)),
                            
                            
                            ListTile(
                              title: Text(
                                "Food Delivery",
                                style: TextStyle(
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                subtitle: Text("Tasty meals delivered to your doorstep.\nOrder premium cat food, treats, and special diets for your furry friend."),
                                

                            ),
                             Card(
                               child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                  
                                   
                                 ],
                               ),
                             ),
                             
                          ],
                        ),
                      ),
                      
                    )
                  ],
                  
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Flexible(
                      
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset("images/cat_doc.png",width: 300,height: 400,)),
                            
                            
                            ListTile(
                              title: Text(
                                "Get Appointments",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                subtitle: Text("Health check-ups made easy.\nSchedule vet visits or teleconsultations directly from the app."),
                                

                            ),
                             Card(
                               child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                 children: [
                                  
                                   
                                 ],
                               ),
                             ),
                             
                          ],
                        ),
                      ),
                      
                    )
                  ],
                  
                )
              
            ],
          )
        ],
      ),
    );
  }
}