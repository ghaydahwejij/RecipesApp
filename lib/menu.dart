import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipesapp/Screen1.dart';
import 'package:recipesapp/provider/posts_provider.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<PostProvider>();
    var response = provider.data;
    var x=4;
    return MaterialApp(

        home: Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 45.0),
              child: Text("What Would You Like to Cock ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25)),
            ),

            TextField(
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: "Search Recipe",
                prefixIcon: Icon(Icons.search,color: Colors.deepOrange,),
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),

                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:
                                  (context) =>(Screen1())));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffa2e777),
                        borderRadius: BorderRadius.circular(33),
                      ),
                      width: 150,
                      height: 220,
                      child: Column(children: [
                        Image.asset("images/vr2.png",height: 185,),
                        Text(
                          "Vegetarian",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16.5),
                        ),
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:
                                  (context) =>(Screen1())));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffa2e777),
                        borderRadius: BorderRadius.circular(33),
                      ),
                      width: 150,
                      height: 220,
                      child: Column(children: [
                        Image.asset("images/cr3.png",height: 185,),
                        Text(
                          "All",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16.5),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 22.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffa2e777),
                  borderRadius: BorderRadius.circular(44),
                ),
                width: 350,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Text(" Add Your Recipes",style: TextStyle(color: Colors.white,fontSize: 25,),),
                    Icon(Icons.add,color: Colors.deepOrange,size: 33,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfffdfdfe),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xffe74f12),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color(0xffe74f12),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xffe74f12),
            ),
            label: "",
          ),
        ],
      ),
    ));
  }
}
