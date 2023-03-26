import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipesapp/HomeScreen.dart';
import 'package:recipesapp/provider/posts_provider.dart';
import 'package:recipesapp/signup.dart';

import 'Screen1.dart';
import 'desc.dart';
import 'menu.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostProvider())
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
        home: HomeScreen(),
      ),
    )

  );
}
