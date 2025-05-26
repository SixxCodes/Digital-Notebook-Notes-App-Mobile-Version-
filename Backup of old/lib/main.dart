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
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: primary,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
          backgroundColor: secondary, 
          titleTextStyle: TextStyle(
            color: primary, 
            fontSize: 32,
            fontFamily: 'Fredoka',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const MainPage(),
    );
  }
}

