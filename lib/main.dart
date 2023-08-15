import 'package:e_board/src/admin/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

void main ()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dashboard(),
    );
  }
}
