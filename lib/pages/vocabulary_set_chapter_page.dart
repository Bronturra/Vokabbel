import 'package:flutter/material.dart';
import 'package:hello/widgets/page_headline_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';

import '../modules.dart';

class VocabularySetChapterPage extends StatefulWidget {
  const VocabularySetChapterPage({Key? key}) : super(key: key);
  @override
  State<VocabularySetChapterPage> createState() => _VocabularySetChapterPageState();
}

class _VocabularySetChapterPageState extends State<VocabularySetChapterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Vokabbel",
        ),
      ),
      body: Column(
        children: [
          const SubHeadlineWidget(text: "Spielerisch Sprachen lernen"),
          const PageHeadlineWidget(text: "Kapitel auswählen"),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 2, // TODO: CHANGE TO ACTUAL COUNTER
              itemBuilder: (context, int index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("/gameModeOverview");
                            },
                            style: universalElevatedButtonStyle(),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                universalElevatedButtonText("Kapitel $index"),
                                const SizedBox(width: 135.0),
                                const Icon(
                                  Icons.arrow_forward,
                                ),
                              ],
                            ),
                          ),

                        )
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
