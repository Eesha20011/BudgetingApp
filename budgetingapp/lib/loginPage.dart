import 'package:flutter/material.dart';
import 'homePage.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController textController = TextEditingController();
  String nameLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: constraints.maxHeight * 0.2,
                  ),
                  Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                    size: constraints.maxHeight * 0.3,
                  ),
                  Text(
                    'Welcome to',
                    style: TextStyle(
                        fontSize: constraints.maxHeight * 0.03,
                        color: Colors.white),
                  ),
                  Text(
                    'Your Wallet',
                    style: TextStyle(
                        fontSize: constraints.maxHeight * 0.04,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.01,
                  ),
                  Container(
                    width: constraints.maxWidth * 0.9,
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.30),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(15)),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Name'),
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.01,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.02,
                  ),
                  Container(
                      height: constraints.maxHeight * 0.07,
                      width: constraints.maxWidth * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                          onPressed: () {
                            nameLogin = textController.text;
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return MyHomePage(name: nameLogin);
                              }));
                            });
                          },
                          child: Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: constraints.maxHeight * 0.03,
                                fontWeight: FontWeight.bold),
                          ))
                          ),
                  SizedBox(
                    height: constraints.maxHeight * 0.15,
                  ),
                ]);
          })),
    );
  }
}
