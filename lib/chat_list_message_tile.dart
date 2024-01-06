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
            width: 390,
            height: 80,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(28, 29, 31, 0),
                  Color.fromRGBO(28, 29, 31, 1),
                  Colors.yellow
                ],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 80, top: 5, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        'Kane',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Certified',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '3 hours',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Text(
                    "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a...",
                    style: TextStyle(color: Colors.white),
                    softWrap: true,
                  ),
                ),
              ],
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
