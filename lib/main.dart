import 'package:flutter/material.dart';
import 'package:nike_shoe_app/screens/home_screen.dart';

// import 'package:nike_shoe_app/product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Shoe App',
      home: HomeScreen(),
    );
  }
}
