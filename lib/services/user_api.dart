import 'dart:convert';

import 'package:firstflutter/model/user_name.dart';
import 'package:firstflutter/model/user_pic.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../model/user.dart';


class UserApi{


  static Future<List<User>> fetchApi() async{
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

    return transformed;
    // print(resp);
    // print("data fetched");
  }

}