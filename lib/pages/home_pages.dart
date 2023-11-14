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
          CustomMenu(imageAssets:"assets/img.png", title: "Persegi"),
          CustomMenu(imageAssets:"assets/img_1.png", title: "Segitiga"),

        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 9, horizontal: 17),
      decoration: BoxDecoration(
          color: Colors.cyan
      ),
      child: Column(
        children: [
          Image.asset(imageAssets, height: 170),
          Text(title),
        ],
      ),
    );
  }
}
