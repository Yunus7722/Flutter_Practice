import 'package:flutter/material.dart';

import '../Card.dart';
import '../MyDrawer.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();

  
}


class _HomePageState extends State<HomePage> {

  TextEditingController _nameController = TextEditingController();
  var myText  =  "Change My Name";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
        child: SingleChildScrollView(
          
          child: ChangeNameCard(myText: myText, nameController: _nameController),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        backgroundColor: Color.fromARGB(255, 4, 199, 199),
        child: Icon(Icons.refresh),
        // mini: true,
      ),
      drawer:MyDrawer()
    );
  }
}

