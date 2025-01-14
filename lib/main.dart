import 'package:flutter/material.dart';
import 'package:shopping_app/features/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor:  const Color.fromARGB(255, 239, 228, 232),
      ),
      home:  HomePage(),
    );
  }
}
