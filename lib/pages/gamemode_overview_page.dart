import 'package:flutter/material.dart';
import 'package:hello/widgets/sub_headline_page_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';

import '../modules.dart';

class GameModeOverviewPage extends StatefulWidget {
  const GameModeOverviewPage({Key? key}) : super(key: key);
  @override
  State<GameModeOverviewPage> createState() => _GameModeOverviewPageState();
}

class _GameModeOverviewPageState extends State<GameModeOverviewPage> {

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
          const SubHeadlinePageWidget(text: "Spiel wählen:"),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/gameModeMemory");
                  },
                  icon: Icon(Icons.person), // Icon auswählen
                  label: Text('Wörter Memory'), // Text für den Button
                ),

                SizedBox(width: 24), // Abstand zwischen den Icons
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/gameModeGuessing");
                  },
                  icon: Icon(Icons.bookmark_add_outlined), // Icon auswählen
                  label: Text('WWM-Modus'), // Text für den Button
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
