import 'package:flutter/material.dart';
import 'package:whatsapp_home/views/call_view.dart';
import 'package:whatsapp_home/views/chat_view.dart';
import 'package:whatsapp_home/views/community_view.dart';
import 'package:whatsapp_home/views/status_view.dart';

void main() {
  runApp(const WhatsappHome());
}

class WhatsappHome extends StatelessWidget {
  const WhatsappHome({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = ThemeData(
      useMaterial3: true,
      primaryColor: const Color.fromRGBO(0, 128, 105, 1),
      backgroundColor: Colors.white,
      splashFactory: InkSparkle.splashFactory,
    );

    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
            body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.photo_camera_rounded),
                    color: theme.colorScheme.onPrimary,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_rounded),
                    color: theme.colorScheme.onPrimary,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                    color: theme.colorScheme.onPrimary,
                  ),
                ],
                backgroundColor: theme.primaryColor,
                title: const Text(
                  'WhatsApp',
                  style: TextStyle(color: Colors.white),
                ),
                pinned: true,
                floating: true,
                bottom: const TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  isScrollable: false,
                  tabs: [
                    Tab(icon: Icon(Icons.people_alt_rounded)),
                    Tab(text: 'Chats'),
                    Tab(text: 'Status'),
                    Tab(text: 'Calls'),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: <Widget>[
              CommunityView(),
              ChatView(),
              StatusView(),
              CallView(),
            ],
          ),
        )),
      ),
    );
  }
}
