import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        appBar: AppBar(
          title: Text("Thoughtnest"),
          backgroundColor: Colors.brown[400],
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.logout)
            )],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration:  BoxDecoration(
              color: const Color.fromARGB(255, 90, 56, 44),
              //curve the corners a bit
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(25),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 64,
            ),
          ),
        ),
      ),
    );
  }
}