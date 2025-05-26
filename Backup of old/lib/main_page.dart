
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<String> dropdownOptions = ["Date modified", "Date created"];
  late String dropdownValue = dropdownOptions.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thoughtnest"),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: FaIcon(FontAwesomeIcons.rightFromBracket),
            style: IconButton.styleFrom(
              backgroundColor: primary, 
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Colors.black,
                ),
              )
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {}, 
        child: FaIcon(FontAwesomeIcons.plus)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Search Thoughts...",
                prefixIcon: Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: primary)
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {}, 
                  icon: FaIcon(FontAwesomeIcons.arrowDown)
                ),
                DropdownButton(
                  value: dropdownValue,
                  items: dropdownOptions
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e)
                      ),
                    )
                    .toList(), 
                  onChanged: (newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  }
                ),
                Spacer(),
                IconButton(
                  onPressed: () {}, 
                  icon: FaIcon(FontAwesomeIcons.bars),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                crossAxisSpacing: 4, 
                mainAxisSpacing: 4
                ), 
                itemBuilder: (context, int index) {
                  // ignore: avoid_unnecessary_containers
                  return Container(
                    child: Column(
                      children: [
                        Text("Thought tile here..."),
                        Row(
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child: Text("First Chip"),
                            ),
                          ],
                        ),
                        Text("Some Content"),
                        Row(
                          children: [
                            Text('09 Jan, 2025'),
                            FaIcon(FontAwesomeIcons.trash),
                          ],
                        ),
                      ], 
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}