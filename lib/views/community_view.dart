import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class CommunityView extends StatefulWidget {
  const CommunityView({Key? key}) : super(key: key);

  @override
  State<CommunityView> createState() => _CommunityViewState();
}

class _CommunityViewState extends State<CommunityView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 248, 252, 1),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Card(
              elevation: 0.6,
              margin: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(),
              surfaceTintColor: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: ListTile(
                    title: const Text('New community'),
                    leading: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Positioned(
                          child: Container(
                              height: 48,
                              width: 48,
                              decoration: ShapeDecoration(
                                  color: Colors.grey
                                      .withOpacity(0.42)
                                      .withBlue(170),
                                  shape: const ContinuousRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(28)),
                                  )),
                              child: const Icon(
                                Icons.people_rounded,
                                color: Colors.white,
                                size: 30,
                              )),
                        ),
                        Positioned(
                          left: 26,
                          top: 26,
                          child: Container(
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                shape: BoxShape.circle,
                                color: theme.primaryColor,
                              ),
                              child: const Icon(
                                Icons.add_rounded,
                                color: Colors.white,
                                size: 16,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )),
          const SizedBox(
            height: 8,
          ),
          for (var i = 24; i < 29; i++)
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Card(
                elevation: 1,
                shadowColor: Colors.grey.shade200,
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(),
                surfaceTintColor: Colors.white,
                child: ListBody(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(WordPair.random().asPascalCase),
                        leading: Container(
                          width: 44,
                          height: 44,
                          decoration: ShapeDecoration(
                              color: Color.fromRGBO(i * 278, i * 32, i * 87, 1)
                                  .withOpacity(0.25),
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(28))),
                          child: Icon(
                            Icons.people_rounded,
                            color: Color.fromRGBO(i * 278, i * 32, i * 87, 1),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.6,
                    ),
                    InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(WordPair.random().asPascalCase),
                          leading: Container(
                            height: 38,
                            width: 38,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(218, 253, 209, 1)),
                            child: const Icon(
                              Icons.speaker_group_rounded,
                              color: Color.fromRGBO(0, 130, 103, 1),
                              size: 20,
                            ),
                          ),
                          subtitle: const Text('You joined the community'),
                          trailing: Text('$i/12/22',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(0.5),
                              )),
                        )),
                    InkWell(
                        onTap: () {},
                        child: ListTile(
                          title: Text(WordPair.random().asPascalCase),
                          leading: Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Color.fromRGBO(i * 28, i * 320, i * 77, 1)
                                        .withOpacity(0.25)),
                            child: Icon(
                              Icons.people_rounded,
                              color: Color.fromRGBO(i * 28, i * 320, i * 77, 1),
                              size: 20,
                            ),
                          ),
                          subtitle: Text(WordPair.random().asPascalCase),
                          trailing: Text('${i - 1}/12/22',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(0.5),
                              )),
                        )),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        title: Text(
                          'View all',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.normal),
                        ),
                        leading: const SizedBox(
                            height: 30,
                            width: 40,
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
