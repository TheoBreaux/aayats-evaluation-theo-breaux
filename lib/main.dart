import 'package:flutter/material.dart';
import 'package:front_end_evaluation/background_color_container.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: BackgroundColorContainer(),
      ),
    ),
  );
}
