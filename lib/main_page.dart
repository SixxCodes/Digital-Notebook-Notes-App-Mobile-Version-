
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thoughtnest"),
        actions: [IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.rightFromBracket),
        )],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Search Thoughts...",
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {}, 
                  icon: FaIcon(FontAwesomeIcons.arrowDown)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}