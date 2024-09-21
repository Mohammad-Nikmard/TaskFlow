import 'package:flutter/material.dart';
import 'package:riverpod_todo/feature/onBoarding/onbaording_screen.dart';
import 'package:riverpod_todo/feature/tasks/ui/add_task_screen.dart';
import 'package:riverpod_todo/feature/tasks/ui/home_screen.dart';
import 'package:riverpod_todo/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const HomeScreen(),
    );
  }
}
