import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ChatBubble extends StatelessWidget {
  final String? text;
  final bool isMe;

  const ChatBubble({super.key, required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: isMe ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              isMe
                  ? const CircleAvatar(
                      maxRadius: 10,
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: AssetImage("assets/images/person.png"),
                    )
                  : const CircleAvatar(
                      maxRadius: 10,
                      backgroundColor: Color(0xff161622),
                      backgroundImage: AssetImage("assets/images/chatbot.png"),
                    ),
              const SizedBox(width: 3),
              isMe
                  ? Text(
                      "Me",
                      style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.w700),
                    )
                  : Text(
                      "Gemini",
                      style: TextStyle(color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.w700),
                    ),
            ],
          ),
          const SizedBox(height: 5),
          Align(
            alignment: isMe ? Alignment.centerLeft : Alignment.centerRight,
            child: Material(
              elevation: 5,
              color: const Color(0xff161622),
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: isMe
                    ? Text(
                        "$text",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    : DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                        child: AnimatedTextKit(
                          totalRepeatCount: 1,
                          animatedTexts: [
                            TypewriterAnimatedText('$text'),
                          ],
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
