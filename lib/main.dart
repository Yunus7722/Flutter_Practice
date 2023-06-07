import 'package:firstflutter/Pages/ApiFetchPage.dart';
import 'package:firstflutter/Pages/LoginPage.dart';
import 'package:firstflutter/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Pages/HomePage.dart';

void main()  {

  // WidgetsFlutterBinding.ensureInitialized();

  // Constants.prefs = await SharedPreferences.getInstance();


  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Awesome App",
      // home: HomePage(),
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: {
        '/home':(context) => HomePage(),
        '/login' : (context) => LoginPage(),
        '/apifetch' :(context) => ApiFetch()
        
      },
    ),
  );
}
