import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(context) {
    return BottomNavigationBar(
      selectedFontSize: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 30,
            color: Color.fromRGBO(149, 161, 172, 1),
          ),
          label: '',
          backgroundColor: Color.fromRGBO(28, 28, 29, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.graphic_eq_rounded,
            size: 30,
            color: Color.fromRGBO(149, 161, 172, 1),
          ),
          label: '',
          backgroundColor: Color.fromRGBO(28, 28, 29, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 30,
            color: Color.fromRGBO(149, 161, 172, 1),
          ),
          label: '',
          backgroundColor: Color.fromRGBO(28, 28, 29, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.mail_outline_sharp,
            size: 30,
            color: Color.fromRGBO(149, 161, 172, 1),
          ),
          label: '',
          backgroundColor: Color.fromRGBO(28, 28, 29, 1),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            size: 30,
            color: Color.fromRGBO(149, 161, 172, 1),
          ),
          label: '',
          backgroundColor: Color.fromRGBO(28, 28, 29, 1),
        ),
      ],
    );
  }
}
