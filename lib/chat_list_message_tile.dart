import 'package:flutter/material.dart';

class ChatListMessageTile extends StatelessWidget {
  const ChatListMessageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('HELLO');
      },
      child: Stack(
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
            child: const Text(
              'TEST',
              style: TextStyle(fontSize: 50, color: Colors.white),
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
    );
  }
}
