import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipesapp/provider/posts_provider.dart';

class desc extends StatefulWidget {
  int? id;
  desc({Key? key, required this.id}) : super(key: key);

  @override
  State<desc> createState() => _descState();
}

class _descState extends State<desc> {
  @override
  Widget build(BuildContext context) {
    var provider = context.watch<PostProvider>();
    var response = provider.data;
    var x = widget.id;

    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xffb9e0a1),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0)),
              color: Colors.white,
            ),
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                      color: Colors.white,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage: NetworkImage(
                          response![x!].photoUrl ?? "",
                        ),
                      ),
                      elevation: 18.0,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                    ),

                  Text(
                    response[x].title ?? "null",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Color(0xfffdfdfe)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 280, top: 4,bottom: 16),
                    child: Text(
                      "Nutritions",
                      style: TextStyle(fontSize: 20.5, color: Colors.black),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 90,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffbae1a2),
                          ),
                          child: Column(
                            children: [
                              Text("Protein",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/ch.png",width: 20,height: 20,),
                                  Text(response[x].protein ?? "null"),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffbae1a2),
                          ),
                          child: Column(
                            children: [
                              Text("Fat",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/steak.png",width: 20,height: 20,),
                                  Text(response[x].protein ?? "null"),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffbae1a2),
                          ),
                          child: Column(
                            children: [
                              Text("Carbo",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/chips.png",width: 20,height: 20,),
                                  Text(response[x].protein ?? "null"),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffbae1a2),
                          ),
                          child: Column(
                            children: [
                              Text("Calories",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/calories.png",width: 20,height: 20,),
                                  Text(response[x].calories.toString() ?? "null"),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffbae1a2),
                          ),
                          child: Column(
                            children: [
                              Text("Sugar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold ),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("images/sugar.png",width: 20,height: 20,),
                                  Text(response[x].sugar ?? "null"),
                                ],
                              ),

                            ],
                          ),
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 270, top: 10),
                    child: Text(
                      "Ingredients",
                      style: TextStyle(fontSize: 20.5, color: Colors.black),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: Text(
                        response[x].ingredients ?? "null",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff625c5c),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 265, top: 10),
                    child: Text(
                      "Preparation",
                      style: TextStyle(fontSize: 20.5, color: Colors.black),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: Text(
                        response[x].directions ?? "null",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff625c5c),
                        ),
                      )),

                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfffdfdfe),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Color(0xffe74f12),),
            label: "",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,color: Color(0xffe74f12),),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Color(0xffe74f12),),
            label: "",

          ),
        ],
      ),
    );
  }
}
