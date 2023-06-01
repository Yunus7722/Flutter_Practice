import 'package:firstflutter/Card.dart';
import 'package:flutter/material.dart';

// import '../Card.dart';
import '../MyDrawer.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _titleController = TextEditingController();
  var myText = "Change My Name";
  var myTitle = "Title";
  // var myUrl = "https://api.chucknorris.io/jokes/random";
  // var data ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getApiData();
  }

  //  getApiData() async {

  //   var res = await http.get(Uri.parse(myUrl));
  //   print(res);

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          // child: data !=null ? SingleChildScrollView(child: Card()) : Center(child: CircularProgressIndicator()),

          child: SingleChildScrollView(
              child:ChangeNameCard(myText: myText, myTitle: myTitle,titleController: _titleController, nameController: _nameController)),
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
