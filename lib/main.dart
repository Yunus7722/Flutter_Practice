import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Awesome App", home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          // alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height,
               width:200,
              height: 500,
              color: Colors.teal,
             
          
          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                
                children: <Widget>[
                  Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
              
                //  color: Colors.teal,
                gradient: LinearGradient(colors: [Colors.yellow, Colors.red]),
                //  shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(10, 15),
                    // spreadRadius: 10
                  )
                ]),
              
                child: Text(
              "Hello World",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                ),
              
                //  color: Colors.yellow,
                width: 100,
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
              
                //  color: Colors.teal,
                gradient: LinearGradient(colors: [Colors.yellow, Colors.red]),
                //  shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [  
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(10, 15),
                    // spreadRadius: 10
                  )
                ]),
              
                child: Text(
              "Hello World",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                ),
              
                //  color: Colors.yellow,
                width: 100,
                height: 100,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
              
                //  color: Colors.teal,
                gradient: LinearGradient(colors: [Colors.yellow, Colors.red]),
                //  shape: BoxShape.circle,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(10, 15),
                    // spreadRadius: 10
                  )
                ]),
              
                child: Text(
              "Hello World",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
                ),
              
                //  color: Colors.yellow,
                width: 100,
                height: 100,
              ),
              
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
