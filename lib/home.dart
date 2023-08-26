import 'package:flutter/material.dart';
import 'package:flutter_application_2/call.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyCall(callID: "1"),));
        }, child: Text("Join Call")),
      ),
    );
  }
}