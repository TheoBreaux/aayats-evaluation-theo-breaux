import 'package:flutter/material.dart';
import 'package:front_end_evaluation/models/message.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:front_end_evaluation/data/chat_messages.dart'; //chat medssage data

class ChatPage extends StatefulWidget {
  final Message messagePreviewData;
  const ChatPage(this.messagePreviewData, {super.key});

  @override
  State<ChatPage> createState() {
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage> {
  final messages = chatMessages;

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
            if (messageData.isCertified)
              IconButton(
                onPressed: () {
                  //send message
                },
                icon: Icon(
                  Icons.verified,
                  color: Colors.blue.shade900,
                ),
              ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(28, 28, 29, 1),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<ChatMessage, DateTime>(
              padding: const EdgeInsets.all(8),
              elements: chatMessages,
              groupBy: (chatMessage) => DateTime(chatMessage.date.year,
                  chatMessage.date.month, chatMessage.date.day),
              groupHeaderBuilder: (ChatMessage chatMessage) => const SizedBox(),
              itemBuilder: (context, ChatMessage chatMessage) => Align(
                alignment: chatMessage.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  elevation: 8,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: chatMessage.isSentByMe
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      if (!chatMessage.isSentByMe)
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/profile_image.png'),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Container(
                          alignment: Alignment.center,
                          width: 149,
                          height: 40,
                          decoration: BoxDecoration(
                            color: chatMessage.isSentByMe
                                ? const Color.fromRGBO(128, 79, 208, 1)
                                : const Color.fromRGBO(28, 28, 29, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            chatMessage.text,
                            style: const TextStyle(
                              color: Color.fromRGBO(220, 215, 215, 1),
                              fontFamily: 'Lato',
                            ),
                          ),
                        ),
                      ),
                      if (chatMessage.isSentByMe)
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/images/profile_image.png'),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                style: const TextStyle(
                  color: Color.fromRGBO(220, 215, 215, 1),
                ),
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(128, 79, 208, 1),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(28, 28, 29, 1),
                  hintText: 'Enter Your message...',
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(220, 215, 215, 1),
                    fontFamily: 'Lato',
                    fontSize: 12,
                  ),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
