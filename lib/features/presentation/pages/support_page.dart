import 'package:flutter/material.dart';


class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 228, 232),
      body: Center(
        child:
        Text('Support Page',
          style: TextStyle(
              fontSize: 26,
              color: Colors.black
          ),
        ),
      ),
    );
  }
}