import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/top_page.dart';

void main() {
  runApp(MyApp());
}

int totalpoint = 0;
bool isMultipuly = false;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TopPage(title: 'Flutter Demo Home Page'),
    );
  }
}
