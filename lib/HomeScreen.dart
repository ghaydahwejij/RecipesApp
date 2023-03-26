import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipesapp/menu.dart';
import 'package:recipesapp/signup.dart';

import 'Screen1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title:Text("Wellcom")),
      body: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "images/back.jpg",
          height: 800,
          width: 950,
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitHeight,
        ),
        Padding(
          padding: EdgeInsets.only(top: 100, left: 2.2),
          child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Cooking a \nDelicious Food \nEasily',
                style: TextStyle(
                  color: Color(0xff345b02),
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  fontStyle: FontStyle.italic,

                ),
              )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 330, left: 264),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 9,
                      offset: Offset(4, 4), // Shadow position
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 110,
                  height: 35,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Menu()));
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Color(0xffd5440b)),
                      ),
                      child: Text("Log In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ))),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 9,
                      offset: Offset(4, 4), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    width: 110,
                    height: 35,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Signup()));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          )),
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.white),
                        ),
                        child: Text("Sign Up",
                            style: TextStyle(
                              color: Color(0xffd5440b),
                              fontSize: 20,
                            ))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
