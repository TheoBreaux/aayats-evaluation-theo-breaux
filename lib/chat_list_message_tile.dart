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
            width: 360,
            height: 80,
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 5, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Kane',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(251, 252, 252, 0.8),
                            ),
                          ),
                          const SizedBox(width: 30),
                          Container(
                            width: 72,
                            height: 20,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(173, 45, 242, 0.75),
                                  Color.fromRGBO(62, 121, 255, 0.75),
                                  Color.fromRGBO(62, 121, 255, 0.75),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Center(
                              child: Text(
                                'Certified',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          '3 hours',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(149, 161, 172, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 15),
                  child: Text(
                    "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a...",
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(149, 161, 172, 1),
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            child: Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/profile_image.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
