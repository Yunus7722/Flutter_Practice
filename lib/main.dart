import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    ),
  );
}
