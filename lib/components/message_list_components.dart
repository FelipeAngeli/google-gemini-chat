import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  final Stream<List<Widget>> messageStream;

  const MessageList({super.key, required this.messageStream});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Widget>>(
      stream: messageStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            controller: ScrollController(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return snapshot.data![index];
            },
          );
        } else {
          return const Center(
            child: Text(
              'Digite uma mensagem para começar a conversa!',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
      },
    );
  }
}
