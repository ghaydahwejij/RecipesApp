import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipesapp/HomeScreen.dart';
import 'package:recipesapp/provider/posts_provider.dart';

import 'desc.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    context.read<PostProvider>().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<PostProvider>();
    var response = provider.data;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Recipes For You"),
      ),
      body: Container(
            color: Color(0xffa2e777),
            height: double.infinity,
            child: Padding(
                      padding:  EdgeInsets.only(top: 1.0),
                      child: response == null
                          ?  Center(child: CircularProgressIndicator())
                          : ListView.separated(
                          physics: const AlwaysScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Expanded(
                                      child: SizedBox(
                                        width: 150,
                                        height: 120,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 4,
                                                offset: Offset(4, 4), // Shadow position
                                              ),
                                            ],
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Card(
                                                    color: Color(0xfffdfdfe),
                                                    elevation: 18.0,
                                                    shape: const CircleBorder(),
                                                    clipBehavior: Clip.hardEdge,
                                                    child: CircleAvatar(
                                                      radius: 50,
                                                      child: Image.network(
                                                        response[index].photoUrl ?? "",
                                                        width: 110,
                                                        height: 120,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        width: 280,
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            response[index].title ??
                                                                "null",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight.bold),
                                                            overflow:
                                                                TextOverflow.ellipsis,
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.favorite_border,
                                                              color: Color(0xffd5440b)),
                                                          IconButton(
                                                              onPressed: () {
                                                                int id = index;
                                                                print("$id");
                                                                Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                desc(
                                                                                  id: id!!,
                                                                                )));
                                                              },
                                                              icon: Icon(Icons
                                                                  .description_sharp),
                                                              color: Color(0xffd5440b))
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.timelapse_rounded,
                                                              color: Color(0xffd5440b)),
                                                          Text(response[index]
                                                              .prepTime
                                                              .toString()),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 9),
                                  itemCount: response!.length),
                            ),





            ),


    );
    //                   }
    //           child:ListView.separated(
    //           itemBuilder: (context, index) {
    //                   Column(
    //                     children: [
    //                   SizedBox(
    //                   width: 153,
    //                 height: 182,
    //                 child: Container(
    //                   decoration: BoxDecoration(
    //                     color: Colors.white,
    //                     borderRadius: BorderRadius.circular(15),
    //                     boxShadow: [
    //                       BoxShadow(
    //                         color: Colors.grey,
    //                         blurRadius: 4,
    //                         offset: Offset(4, 4), // Shadow position
    //                       ),
    //                     ],
    //                   ),
    //                   child:Text(response[index].title??"null"),
    //                 ),
    //                   )
    //                               ],
    //                             );
    //                           },
    //                           separatorBuilder: (context, index) =>
    //                           const SizedBox(height: 16),
    //                           itemCount: response!.length),
    //                 ),
    //
    //             ],
    //           ),
    //         ),
    // );
  }
}

// body:response==null
//     ? const Center(child: CircularProgressIndicator())
//     : ListView.separated(
//     itemBuilder: (context, index) {
//       return Column(
//         children: [
//           Text(response[index].title ?? "null"),
//           SizedBox(height: 8,),
//           Text(response[index].ingredients ?? "null"),
//         ],
//       );
//     },
//     separatorBuilder: (context, index) => const SizedBox(height: 16),
//     itemCount: response!.length),
