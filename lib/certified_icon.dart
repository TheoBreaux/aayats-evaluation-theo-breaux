import 'package:flutter/material.dart';

class CertifiedIcon extends StatelessWidget {
  const CertifiedIcon({super.key});

  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.center,
      width: 72,
      height: 20,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(170, 51, 234, 1),
            Color.fromRGBO(173, 45, 242, 1),
            Color.fromRGBO(135, 20, 198, 1),
            Color.fromRGBO(46, 101, 231, 1),
            Color.fromRGBO(22, 82, 216, 0.8),
            Color.fromRGBO(21, 71, 189, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Text(
        "Certified",
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}
