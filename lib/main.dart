import 'package:firstflutter/Pages/LoginPage.dart';
import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      // home: HomePage(),
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    ),
  );
}
