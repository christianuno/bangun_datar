import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        title: Text("Home Page", style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
      margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(vertical: 9, horizontal: 17),
            decoration: BoxDecoration(
                color: Colors.cyan
            ),
            child: Text("Persegi"),
          ),
          Container(
            margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 17),
      decoration: BoxDecoration(
          color: Colors.deepPurple
      ),
      child: Text("Segitiga"),
          )
        ],
      ),
    );
  }
}
