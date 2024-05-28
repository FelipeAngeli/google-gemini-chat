import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:gemini_ai_project/components/chat_bubble_components.dart';
import '../utils/error_handler.dart';

class ChatProvider with ChangeNotifier {
  final List<Widget> _chatMessages = [];
  List<Widget> get chatMessages => _chatMessages;
  final StreamController<List<Widget>> _messageStreamController = StreamController();

  String? response;

  void addChatMessage(String? message, bool sender) {
    _chatMessages.add(ChatBubble(
      text: message,
      isMe: sender,
    ));
    _messageStreamController.add(_chatMessages);
    notifyListeners();
  }

  Stream<List<Widget>> get messageStream => _messageStreamController.stream;

  Future<void> sendMessage(BuildContext context, String message) async {
    addChatMessage(message, true);
    try {
      final gemini = Gemini.instance;
      await gemini.text(message).then((value) {
        response = value?.output;
        // ignore: invalid_return_type_for_catch_error
      }).catchError((e) => ErrorHandler.handleError(context, e));
      addChatMessage(response, false);
    } catch (e) {
      // ignore: use_build_context_synchronously
      ErrorHandler.handleError(context, e);
    }
  }
}
