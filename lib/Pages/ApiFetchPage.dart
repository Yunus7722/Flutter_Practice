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
          final firstName = user['name']['first'];
          final nameTitle = user['name']['title'];
          final lastName = user['name']['last'];
          final thumbnail = user['picture']['thumbnail'];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('${nameTitle}  ${firstName}  ${lastName}'),
            // leading: CircleAvatar(child: Text('${index+1}')),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(thumbnail)),
              subtitle: Text(email),
        
          ),
        );
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchApi,
        child: Icon(Icons.refresh),
      ),
      
    );
  }

  void fetchApi() async{
    print("pressed");
    final dio = Dio();
    const url = "https://randomuser.me/api/?results=20";
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