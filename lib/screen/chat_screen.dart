import 'package:flutter/material.dart';
import 'package:gemini_ai_project/providers/chat_provider.dart';
import 'package:gemini_ai_project/components/message_list_components.dart';
import 'package:provider/provider.dart';
import '../components/message_input.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final chatProvider = Provider.of<ChatProvider>(context);

    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff161622),
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xff161622),
                      maxRadius: 15,
                      backgroundImage: AssetImage("assets/images/ChatBot.png"),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Gemini ChatBot",
                      style:
                          TextStyle(fontSize: screenWidth * 0.02, color: Colors.blueGrey, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: MessageList(
                  messageStream: chatProvider.messageStream,
                ),
              ),
              MessageInput(
                onSend: (message) {
                  chatProvider.sendMessage(context, message);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
