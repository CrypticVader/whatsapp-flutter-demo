import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: theme.primaryColor,
        foregroundColor: theme.colorScheme.onPrimary,
        onPressed: () {},
        tooltip: 'New Chat',
        child: const Icon(Icons.chat_rounded),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          for (var i = 0; i < 20; i++)
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(WordPair.random().asPascalCase),
                leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(i * 190, i * 140, i * 67, 1).withOpacity(0.25),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.person_rounded,
                      color: Color.fromRGBO(i * 190, i * 140, i * 67, 1),
                    )),
                trailing: Text('9:00 PM',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black.withOpacity(0.5),
                    )),
                subtitle: Text(WordPair.random().asPascalCase),
              ),
            )
        ],
      ),
    );
  }
}
