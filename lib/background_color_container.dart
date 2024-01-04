import 'package:flutter/material.dart';

class BackgroundColorContainer extends StatelessWidget {
  const BackgroundColorContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'HELLO THEO BREAUX BREAUX BREAUX!',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
