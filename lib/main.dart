import 'package:flutter/material.dart';
import 'package:front_end_evaluation/background_color_container.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(28, 28, 29, 1),
          leading: TextButton(
            onPressed: () {
              print('Edit Message!');
            },
            child: const Text(
              "Edit",
              style: TextStyle(
                color: Color.fromRGBO(149, 161, 172, 1),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          title: GradientText(
            "Inbox",
            style: const TextStyle(
              fontSize: 20,
            ),
            colors: const [
              Color.fromRGBO(198, 95, 253, 1),
              Color.fromRGBO(112, 157, 255, 1),
            ],
          ),
          actions: <Widget>[
            ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => const LinearGradient(
                      colors: [
                        Color.fromRGBO(173, 45, 242, 0.75),
                        Color.fromRGBO(62, 121, 255, 0.75),
                        Color.fromRGBO(62, 121, 255, 0.75),
                      ],
                    ).createShader(bounds),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Search',
                  iconSize: 30,
                  onPressed: () {
                    print('Search For Shit!');
                  },
                ))
          ],
        ),
        body: const BackgroundColorContainer(),
      ),
    ),
  );
}
