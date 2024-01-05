import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:front_end_evaluation/bottom_nav_bar.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() {
    return _ChatList();
  }
}

class _ChatList extends State<ChatList> {
  @override
  Widget build(context) {
    return MaterialApp(
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
              ),
            )
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 370,
                    height: 70,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(28, 29, 31, 0),
                          Color.fromRGBO(28, 29, 31, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 70,
                        // backgroundImage: AssetImage(''),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Stack(
                children: [
                  Container(
                    width: 370,
                    height: 70,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(28, 29, 31, 0),
                          Color.fromRGBO(28, 29, 31, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 70,
                        // backgroundImage: AssetImage(''),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
