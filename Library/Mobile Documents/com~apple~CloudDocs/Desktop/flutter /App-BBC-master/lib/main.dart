import 'package:bbc/constant/app_names.dart';
import 'package:bbc/views/home/v_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppName.name,
      debugShowCheckedModeBanner: false,
      home: ViewHome(),
    );
  }
}
