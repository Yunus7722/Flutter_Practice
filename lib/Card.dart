import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    super.key,
    required this.myText,
    required TextEditingController nameController,
  }) : _nameController = nameController;

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Color.fromARGB(255, 255, 102, 64),
     
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children:<Widget>[
          Image.asset("assets/luffy.png",
          fit: BoxFit.cover,
          height: 300,
          ),
          SizedBox(
            height: 30,
          ),
          Text(myText,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.teal
          ),
          
          
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              // keyboardType: TextInputType.number,
              // obscureText: true, // For Password
              controller: _nameController,
              decoration: InputDecoration(
                label: Text("Name"),
                hintText: "Whats Your Name Dude",
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30)))
              ),
            ),
          )
         
        ],
      ),
    );
  }
}