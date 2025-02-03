import 'package:flutter/material.dart';
import 'constants.dart';
import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thoughtnest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
          backgroundColor: Colors.transparent, titleTextStyle: TextStyle(
            color: primary, 
            fontSize: 32,
          ),
        ),
      ),
      home: const MainPage(),
    );
  }
}

