import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static String name = name;
  static String userID =userID;


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (val){
                val;
              },
              decoration: InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {
                 value;
              },
              decoration: InputDecoration(
                  hintText: "UserId", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
            }, child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
