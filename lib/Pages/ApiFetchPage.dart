import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class ApiFetch extends StatefulWidget {
  const ApiFetch({super.key});

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {

  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api fetching"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user['email'];
        return ListTile(
          title: Text(email),
          leading: CircleAvatar(child: Text('${index+1}')),
        );
      },),
      floatingActionButton: FloatingActionButton(onPressed: fetchApi),
    );
  }

  void fetchApi() async{
    print("pressed");
    final dio = Dio();
    const url = "https://randomuser.me/api/?results=10";
    final resp = await dio.get(url);
    final body = resp.data;
    // final json = jsonDecode(body);
    setState(() {
        users = body['results'];
    });
    // print(resp);
    // print("data fetched");
  }
}