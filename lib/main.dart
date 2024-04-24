import 'package:compass_first_app/bloc/favorite_bloc/favorite_news_bloc.dart';
import 'package:compass_first_app/bloc/news_bloc/news_bloc.dart';
import 'package:compass_first_app/pages/favorite_news_page.dart';
import 'package:compass_first_app/pages/home_page.dart';
import 'package:compass_first_app/pages/news_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      routes: {
        '/': (context) => BlocProvider(
              create: (_) => NewsBloc()..add(FetchNews()),
              child: const HomePage(),
            ),
        '/news_details': (context) => BlocProvider(
              create: (_) => FavoriteNewsBloc(),
              child: const NewsDetailsPage(),
            ),
        '/favorite_news': (context) => const FavoriteNewsPage(),
      },
    );
  }
}
