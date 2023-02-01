import 'package:dotted_border/dotted_border.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 42,
            width: 42,
            child: FloatingActionButton(
              shape: const CircleBorder(),
              backgroundColor: const Color.fromRGBO(239, 245, 249, 1),
              foregroundColor: theme.primaryColor,
              onPressed: () {},
              tooltip: 'Edit status',
              child: const Icon(Icons.edit_rounded),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: theme.primaryColor,
            foregroundColor: theme.colorScheme.onPrimary,
            onPressed: () {},
            tooltip: 'New status',
            child: const Icon(Icons.camera_alt_rounded),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          InkWell(
            onTap: () {},
            child: ListTile(
              title: const Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.purple.withOpacity(0.25),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Icon(
                    color: Colors.purple,
                    Icons.face_rounded,
                  )),
              trailing: Icon(
                Icons.more_horiz_rounded,
                color: theme.primaryColor,
              ),
              subtitle: const Text('Yesterday, 12:00 AM'),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 6, 6, 6),
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Recent updates',
              style: TextStyle(
                  color: Colors.grey.shade700, fontWeight: FontWeight.bold),
            ),
          ),
          for (var i = 10; i < 15; i++)
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(WordPair.random().asPascalCase),
                  subtitle: Text('$i minutes ago'),
                  leading: DottedBorder(
                    color: Colors.green,
                    borderType: BorderType.Circle,
                    strokeWidth: 2,
                    dashPattern: [2 * i.toDouble(), 4, i.toDouble(), 4],
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(i * 208, i * 150, i * 67, 1)
                              .withOpacity(0.25),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          Icons.person_rounded,
                          color: Color.fromRGBO(i * 208, i * 150, i * 67, 1),
                        )),
                  ),
                )),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 6, 6, 6),
            height: 34,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Muted updates',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.keyboard_arrow_up_rounded,
                  color: theme.primaryColor,
                )
              ],
            ),
          ),
          for (var i = 56; i < 60; i++)
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(WordPair.random().asPascalCase),
                  subtitle: Text('$i minutes ago'),
                  leading: DottedBorder(
                    color: theme.primaryColor,
                    borderType: BorderType.Circle,
                    strokeWidth: 2,
                    dashPattern: [i.toDouble(), 4, i.toDouble(), 4],
                    child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(i * 90, i * 68, i * 67, 1)
                              .withOpacity(0.25),
                          /*border: Border.all(
                                width: 2, color: theme.colorScheme.primary)*/
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Icon(Icons.person_rounded,
                            color: Color.fromRGBO(i * 90, i * 68, i * 67, 1))),
                  ),
                )),
        ],
      ),
    );
  }
}
