import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class CallView extends StatefulWidget {
  const CallView({Key? key}) : super(key: key);

  @override
  State<CallView> createState() => _CallViewState();
}

class _CallViewState extends State<CallView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: theme.primaryColor,
        foregroundColor: theme.colorScheme.onPrimary,
        onPressed: () {},
        tooltip: 'New Call',
        child: const Icon(Icons.add_ic_call_rounded),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          InkWell(
            onTap: () {},
            child: ListTile(
              title: const Text('Create call link'),
              subtitle: const Text('Share a link for your WhatsApp call'),
              leading: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: theme.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.attach_file_rounded,
                    color: Colors.white,
                  )),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Recent',
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ),
          for (var i = 20; i < 25; i++)
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(WordPair.random().asPascalCase),
                  subtitle: Row(
                    children: [
                      Text(
                          String.fromCharCode(
                              Icons.call_made_rounded.codePoint),
                          style: TextStyle(
                            inherit: false,
                            color: Colors.red,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: Icons.call_made_rounded.fontFamily,
                            package: Icons.call_made_rounded.fontPackage,
                          )),
                      Text('$i January, ${i - 14}:10 am'),
                    ],
                  ),
                  leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(i * 90, i * 100, i * 67, 1)
                            .withOpacity(0.25),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Icon(Icons.person_rounded,
                          color: Color.fromRGBO(i * 90, i * 100, i * 67, 1))),
                  trailing: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                        child: Icon(
                          Icons.call_rounded,
                          color: theme.primaryColor,
                        ),
                      )),
                )),
        ],
      ),
    );
  }
}
