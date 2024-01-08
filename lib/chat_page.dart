import 'package:flutter/material.dart';
import 'package:front_end_evaluation/models/message.dart';

class ChatPage extends StatefulWidget {
  final Message messagePreviewData;
  const ChatPage(this.messagePreviewData, {super.key});

  @override
  State<ChatPage> createState() {
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(context) {
    Message messageData = widget.messagePreviewData;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/profile_image.png'),
            ),
            const SizedBox(width: 8),
            Text(
              messageData.username,
              style: const TextStyle(color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.verified,
                color: Colors.blue.shade900,
              ),
            )
          ],
        ),
        backgroundColor: const Color.fromRGBO(28, 28, 29, 1),
      ),
      backgroundColor: Colors.black,
    );
  }
}
