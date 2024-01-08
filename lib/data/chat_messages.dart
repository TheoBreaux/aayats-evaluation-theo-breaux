import 'package:front_end_evaluation/models/message.dart';

List<Message> messages = [
  const Message("Kane", true, "3 hours",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Rayan", false, "Yesterday",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Ray", true, "16 hours",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Rayan", false, "Yesterday",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Ray", true, "16 hours",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Kane", false, "3 hours",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Ray", true, "16 hours",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Ray", false, "16 hours",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Ray", true, "16 hours",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
  const Message("Rayan", false, "Yesterday",
      "Hi! I'm looking for a studio engineer for my upcoming single. Are you available for mixing a..."),
];

List<ChatMessage> chatMessages = [
  ChatMessage("How's it going bro",
      DateTime.now().subtract(const Duration(minutes: 1)), false),
  ChatMessage("So far so good",
      DateTime.now().subtract(const Duration(minutes: 10)), true),
];
