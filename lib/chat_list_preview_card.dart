import 'package:flutter/material.dart';
import 'package:front_end_evaluation/certified_icon.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatListPreviewCard extends StatelessWidget {
  const ChatListPreviewCard(
      this.username, this.isCertified, this.timeElapsed, this.text,
      {super.key});

  final String username;
  final bool isCertified;
  final String timeElapsed;
  final String text;

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
                  Text(
                    username,
                    style: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(251, 252, 252, 0.8),
                    ),
                  ),

                  //if user is certified, display badge
                  if (isCertified) const CertifiedIcon(),

                  Column(
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


// Dismissible(
//       key: Key(username), // Provide a unique key for each item
//       direction: DismissDirection.endToStart,
//       background: Container(
//         color: Colors.red, // Background color for delete option
//         padding: const EdgeInsets.only(left: 1),
//         alignment: Alignment.centerLeft,
//         child: const Icon(
//           Icons.delete,
//           color: Colors.white,
//         ),
//       ),
//       secondaryBackground: Container(
//         padding: const EdgeInsets.only(right: 16),
//         alignment: Alignment.centerRight,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Container(
//               alignment: Alignment.center,
//               width: 93,
//               height: 72,
//               decoration: const BoxDecoration(
//                 color: Color.fromRGBO(190, 133, 66, 1),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10),
//                 ),
//               ),
//               child: const Text(
//                 "Pin",
//                 style: TextStyle(
//                   fontFamily: 'Lato',
//                   fontSize: 12,
//                   fontWeight: FontWeight.normal,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             const SizedBox(width: 5),
//             Container(
//               alignment: Alignment.center,
//               width: 93,
//               height: 72,
//               decoration: const BoxDecoration(
//                 color: Color.fromRGBO(188, 58, 58, 1),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(10),
//                 ),
//               ),
//               child: const Text(
//                 "Delete",
//                 style: TextStyle(
//                   fontFamily: 'Lato',
//                   fontSize: 12,
//                   fontWeight: FontWeight.normal,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       onDismissed: (direction) {
//         // Handle swipe actions here (delete or pin)
//         if (direction == DismissDirection.startToEnd) {
//           // Delete action
//           // Add your delete logic here
//         } else if (direction == DismissDirection.endToStart) {
//           // Pin action
//           // Add your pin logic here
//         }
//       },
//       child:
