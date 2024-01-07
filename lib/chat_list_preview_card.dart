import 'package:flutter/material.dart';
import 'package:front_end_evaluation/certified_icon.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatListPreviewCard extends StatelessWidget {
  const ChatListPreviewCard(this.username, this.isCertified, this.timeElapsed,
      this.text, this.isEditing, {super.key});

  final String username;
  final bool isCertified;
  final String timeElapsed;
  final String text;
  final bool isEditing;

  @override
  Widget build(context) {
    return Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        const SizedBox(width: 5),
        SlidableAction(
          label: 'Pin',
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          onPressed: (context) {},
          backgroundColor: const Color.fromRGBO(190, 133, 66, 1),
        ),
        const SizedBox(width: 5),
        SlidableAction(
          label: 'Delete',
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          onPressed: (context) {},
          backgroundColor: const Color.fromRGBO(188, 58, 58, 1),
        ),
      ]),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
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
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: 370,
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/profile_image.png'),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    child: Text(
                      username,
                      style: const TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(251, 252, 252, 0.8),
                      ),
                    ),
                  ),

                  //if user is certified, display badge
                  if (isCertified) const CertifiedIcon(),

                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          timeElapsed,
                          style: const TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color.fromRGBO(149, 161, 172, 1),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              subtitle: Text(
                text,
                style: const TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(149, 161, 172, 1),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
