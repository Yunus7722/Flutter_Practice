import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  backgroundImage: AssetImage("assets/luffy.png"),
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
          ));
  }
}