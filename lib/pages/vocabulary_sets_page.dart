import 'package:flutter/material.dart';
import 'package:hello/widgets/page_headline_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';

import '../modules.dart';

class VocabularySetsPage extends StatefulWidget {
  const VocabularySetsPage({Key? key}) : super(key: key);
  @override
  State<VocabularySetsPage> createState() => _VocabularySetsPageState();
}

class _VocabularySetsPageState extends State<VocabularySetsPage> {

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
          const PageHeadlineWidget(text: "Vokabelsets"),
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
                              Navigator.of(context).pushNamed("/vocabularySetChapter");
                            },
                            style: universalElevatedButtonStyle(),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                universalElevatedButtonText("Vokabelset $index"),
                                const SizedBox(width: 135.0),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.indigoAccent,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add some Vokabelsets");
          //Navigator.of(context).pushNamed(destinationRoute);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
