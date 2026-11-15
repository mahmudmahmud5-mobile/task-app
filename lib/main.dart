import 'package:flutter/material.dart';
import 'package:task_manager/presentation/feature/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Manager",
      theme: ThemeData(),
      home: SplashPage(),
    );
  }
}

