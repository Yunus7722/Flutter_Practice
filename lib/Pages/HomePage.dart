import 'dart:convert';

import 'package:firstflutter/Card.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

// import '../Card.dart';
import '../MyDrawer.dart';
// import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _titleController = TextEditingController();
  var myText = "Change My Name";
  var myTitle = "Title";
  var myUrl = "https://jsonplaceholder.typicode.com/photos";
  var data;

  final dio = Dio();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApiData();
  }

  getApiData() async {
    var res = await dio.get(myUrl);
    // print(res);
    data = res.data;
    // data = jsonDecode(res);
    setState(() {});
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: data != null
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListTile(
                        title: Text(data[index]['title']),
                        leading: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(data[index]['url']),
                            ),
                          ),
                        ),
                        subtitle: Text('ID : ${data[index]['id']}'),
                      ),
                    );
                  },
                  itemCount: data.length,
                )
              : Center(child: CircularProgressIndicator()),

          // child: SingleChildScrollView(
          //     child: ChangeNameCard(
          //         myText: myText,
          //         myTitle: myTitle,
          //         titleController: _titleController,
          //         nameController: _nameController)),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            myTitle = _titleController.text;
            setState(() {});
          },
          backgroundColor: Color.fromARGB(255, 4, 199, 199),
          child: Icon(Icons.refresh),
          // mini: true,
        ),
        drawer: MyDrawer());
  }
}
