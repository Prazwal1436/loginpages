import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(
            "Welcome " + username,
            style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
