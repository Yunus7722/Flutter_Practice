import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(child: Container()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(167, 5, 223, 223),
        child: Icon(Icons.add_a_photo),
        // mini: true,
      ),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(253, 255, 255, 255),
          width: 250,
          // shape: CircleBorder(),
          elevation: 10,
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              /*Custom Drawer Header*/
              // DrawerHeader(child: Text("Hello World ",style:   TextStyle(
              //   color: Colors.white,fontSize: 25
              // ),),

              // decoration: BoxDecoration(color: Colors.teal[600]),),
              UserAccountsDrawerHeader(
                accountName: Text("Kaizuku"),
                accountEmail: Text("Kaizuku123@gmail.com"),
                // currentAccountPicture: Image.network(
                //     "https://lh3.googleusercontent.com/Ryg5ih-fOWbpEGDpbJYJz5RTq3_28Tvo2h3JQRCdiz16lw5ghitDMN6hcWA57g0d6_8VOqQYcCemRBOfZGQA64ZKkFOn71zuF1LDsXwCh4ywF-_z6VqxbBqmbQvK_-PWfZcztxDd1WDTEEUHX6GdP60"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://lh3.googleusercontent.com/Ryg5ih-fOWbpEGDpbJYJz5RTq3_28Tvo2h3JQRCdiz16lw5ghitDMN6hcWA57g0d6_8VOqQYcCemRBOfZGQA64ZKkFOn71zuF1LDsXwCh4ywF-_z6VqxbBqmbQvK_-PWfZcztxDd1WDTEEUHX6GdP60"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("Personal"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email ID"),
                subtitle: Text("admin@gmail.com"),
                trailing: Icon(Icons.send),
              )
            ],
          )),
    );
  }
}
