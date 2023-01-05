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
        title: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Hi Eesha!",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25),
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Let's check your budget",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 25),
              )),
        ]),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
                icon: const Icon(Icons.account_circle, size: 32),
                onPressed: () {}),
            const SizedBox(
              width: 200,
            ),
            IconButton(
                icon: const Icon(
                  Icons.bar_chart_outlined,
                  size: 32,
                ),
                onPressed: () {}),
            const Spacer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
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
                      offset: const Offset(4, 8), // Shadow position
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
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Your Wallet💰",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      fontSize: 23),
                                ),
                                // const Icon(
                                //   Icons.account_balance_wallet_outlined,
                                //   size: 23,
                                // ),
                              ]))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "10.275",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                          fontSize: 30),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Dollars",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                          fontSize: 20),
                    ),
                  ]),
                ])),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select an expense to add",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
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
                        offset: const Offset(5, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.emoji_objects_outlined,
                    size: 30,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 15,
              ),
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
                        offset: const Offset(5, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.emoji_food_beverage_sharp,
                    size: 30,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 15,
              ),
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
                        offset: const Offset(5, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.house_rounded,
                    size: 30,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 15,
              ),
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
                        offset: const Offset(5, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.flatware_outlined,
                    size: 30,
                    color: Colors.white,
                  ))
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                    width: 180,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                          offset: const Offset(5, 8), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.auto_graph,
                              size: 30,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Done",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Text(
                          "12",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 80),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Completed saving goals",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                        width: 170,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: const Offset(5, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.add_chart,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Saving Goal",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "2",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "goals",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey,
                                      fontSize: 30),
                                ),
                              ],
                            ),
                            Text(
                              "in progress",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.lightBlue,
                                  fontSize: 15),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 170,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4,
                              offset: const Offset(5, 8), // Shadow position
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "💸 Saving tips",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Row(
                                  children: const [
                                    SizedBox(
                                      width: 90,
                                    ),
                                    Icon(
                                      Icons.attach_money,
                                      size: 60,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.ballot_outlined,
                                  size: 90,
                                  color: Colors.lightBlue.withOpacity(0.50),
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                )
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
