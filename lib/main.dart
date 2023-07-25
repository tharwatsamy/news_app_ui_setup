import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/views/home_view.dart';

void main() {
  getGeneralNews();
  runApp(const NewsApp());
}

final dio = Dio();

void getGeneralNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=3c88955c487e4d9db668f011dd85e737');
  print(response);
}

void getSportsNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=3c88955c487e4d9db668f011dd85e737');
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
