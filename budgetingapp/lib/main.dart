import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Hi Eesha!",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar:  BottomAppBar(
        color: Colors.white,
    child: Row(
      children: [
         Spacer(),
        IconButton(icon: Icon(Icons.account_circle,size: 32, ), onPressed: () {}),
        SizedBox(width: 200,),
        IconButton(icon: Icon(Icons.bar_chart_outlined, size: 32,), onPressed: () {}),
        Spacer(),
      ],
    ),
  ),
  floatingActionButton:
          FloatingActionButton(backgroundColor: Colors.lightBlue, child: Icon(Icons.add,), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked


      ,body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
                width: 250,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    
                    Text(
                      
                      "Your Budget",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 23),
                    ),
                    const Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 23,
                    ),
                    
                  ])
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "100.000",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                          fontSize: 30),
                    ),
                    SizedBox(width: 5,),
                     Text(
                      "Dollars",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                          fontSize: 20),
                    ),
                  ]),
                ])),
                SizedBox(height: 30,),
          
        Row(children: [
          SizedBox(width: 10,),
          Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Select an expense to add",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          ),
        ),
          ],),
          
          SizedBox(height: 15,),
          
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(5, 8), // Shadow position
                    ),
                  ],
                ),
                child: Icon(
                      Icons.emoji_objects_outlined ,
                      size: 30,
                      color: Colors.white,
                    )
            ),
            SizedBox(width: 15,),
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(5, 8), // Shadow position
                    ),
                  ],
                ),
                child: Icon(
                      Icons.emoji_food_beverage_sharp  ,
                      size: 30,
                      color: Colors.white,
                    )
            ),
             SizedBox(width: 15,),
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(5, 8), // Shadow position
                    ),
                  ],
                ),
                child: Icon(
                      Icons.house_rounded  ,
                      size: 30,
                      color: Colors.white,
                    )
            ),
            
             SizedBox(width: 15,),
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      offset: Offset(5, 8), // Shadow position
                    ),
                  ],
                ),
                child: Icon(
                      Icons.flatware_outlined  ,
                      size: 30,
                      color: Colors.white,
                    )
            )
            ]),
          
          
          Spacer()
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
