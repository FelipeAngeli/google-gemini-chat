import 'package:flutter/material.dart';

class MessageInput extends StatelessWidget {
  final Function(String) onSend;
  final TextEditingController messageController = TextEditingController();

  MessageInput({super.key, required this.onSend});

  @override
  Widget build(BuildContext context) {
    String message = '';

    return Row(
      children: [
        Container(
          height: 50,
          width: 280,
          padding: const EdgeInsets.only(left: 20),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
              color: const Color(0xff161622),
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          child: TextField(
            controller: messageController,
            onChanged: (value) {
              message = value;
            },
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                hintText: "Digite uma mensagem...",
                hintStyle: TextStyle(color: Colors.blueGrey),
                border: InputBorder.none),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {
            if (message.isNotEmpty) {
              onSend(message);
              messageController.clear();
            }
          },
          icon: const Icon(Icons.send),
          color: Colors.blueGrey,
        )
      ],
    );
  }
}
