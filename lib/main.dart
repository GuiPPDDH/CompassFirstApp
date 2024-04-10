import 'package:compass_first_app/pages/home_page.dart';
import 'package:compass_first_app/pages/news_details_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Compass Starter Flutter Code',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
       '/': (context) => const HomePage(),
       '/news_details':(context) => const NewsDetailsPage(),
      },
    );
  }
}

