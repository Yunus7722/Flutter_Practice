import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    super.key,
    required this.myText,
    required this.myTitle,
    required TextEditingController titleController,
    required TextEditingController nameController,
  })  : _titleController = titleController,
        _nameController = nameController;

  final String myText;
  final String myTitle;
  final TextEditingController _titleController;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Color.fromARGB(255, 255, 102, 64),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
    
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.asset(
                "assets/luffy.png",
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Text(
            myText,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            myTitle,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 24, 189, 172)),
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              // keyboardType: TextInputType.number,
              // obscureText: true, // For Password
              controller: _nameController,
              decoration: InputDecoration(
                  label: Text("Name"),
                  hintText: "Whats Your Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              // keyboardType: TextInputType.number,
              // obscureText: true, // For Password
              controller: _titleController,
              decoration: InputDecoration(
                  label: Text("Title"),
                  hintText: "Whats Your Title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          SizedBox(
            height: 7,
          )
        ],
      ),
    );
  }
}
