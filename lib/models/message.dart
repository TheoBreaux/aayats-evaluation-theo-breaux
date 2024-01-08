class Message {
  final String username;
  final String timeElapsed;
  final String text;
  final bool isCertified;

  const Message(this.username, this.isCertified, this.timeElapsed, this.text);
}

class ChatMessage {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  const ChatMessage(this.text, this.date, this.isSentByMe);
}
