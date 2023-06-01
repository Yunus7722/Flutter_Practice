import 'package:firstflutter/Pages/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _userName = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login to Account"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Image.asset("assets/s2.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.4),
            colorBlendMode: BlendMode.darken,
            ),
            
          ),
          Center(
            child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          TextFormField(
                           
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              hintText: "Enter Username",
                              labelText: "Username",
                              
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(20)
                                ),
                                hintText: "Enter Password",
                                labelText: "Password"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 110,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      child: Text(
                        "Login",
                        style:
                            TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors
                              .teal[300]), // Set the desired background color
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)))),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
                  ),
                ),
          ),
        ],
      )
    );
  }
}
