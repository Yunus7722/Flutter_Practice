import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../model/user.dart';

class ApiFetch extends StatefulWidget {
  const ApiFetch({super.key});

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {

  List<User> users = [];
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
          final email = user.email;
          final gender = user.gender;
          final phone = user.phone;
          final cell = user.cell;
          final nationality = user.nat;
          final firstName = user.name.first;
          final titleName = user.name.title;
          final lastName = user.name.last;

          final thumbnail = user.pictures.thumbnail;
          final large = user.pictures.large;
          final medium = user.pictures.medium;

          final color = gender=='male' ? Colors.blue : Colors.yellow;
      
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            
            title: Text('${titleName} ${firstName} ${lastName}'),
            // leading: CircleAvatar(child: Text('${index+1}')),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(large)),
            subtitle: Text('${phone}\n${email}'),
            // tileColor: color,
            
            
            // leading:Text(),
                
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
    //w have to take these results out of setstate
    final results = body['results'] as List<dynamic>; //results will be in string format

    //we have to transform to user type from string type to List type
    //indiUser = individual user from results into map
    final transformed = results.map((indiUser){

      final pictures = UserPic(
        thumbnail: indiUser['picture']['thumbnail'], 
        large: indiUser['picture']['large'], 
        medium: indiUser['picture']['medium'], 
        );

      final name = UserName(
        title: indiUser['name']['title'],
        first: indiUser['name']['first'],
        last: indiUser['name']['last'],
      );
        return User(
          gender: indiUser['gender'],
          email: indiUser['email'],
          phone: indiUser['phone'],
          cell: indiUser['cell'],
          nat: indiUser['nat'],
          name: name,
          pictures: pictures,
        );
    }).toList();

    setState(() {
        users = transformed;
    });
    // print(resp);
    // print("data fetched");
  }
}