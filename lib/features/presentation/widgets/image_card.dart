import 'package:flutter/material.dart';

imageCard(String imagePath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Stack(
      children: [ Image.asset(
        imagePath,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ],
    ),
  );
}














