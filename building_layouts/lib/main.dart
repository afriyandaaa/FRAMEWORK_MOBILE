import 'package:flutter/material.dart';
//memanggil folder dan class
import './widgets/layout.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Building(),//nama class
    );
  }
}
