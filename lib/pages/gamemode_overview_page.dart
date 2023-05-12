import 'package:flutter/material.dart';
import 'package:hello/widgets/page_headline_widget.dart';
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
          const PageHeadlineWidget(text: "Spiel wählen:"),
          Expanded(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/gameModeMemory");
                  },
                  icon: Icon(Icons.person), // Icon auswählen
                  label: Text('Memory-Modus'), // Text für den Button
                ),

                SizedBox(height: 24), // Abstand zwischen den Icons
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/gameModeGuessing");
                  },
                  icon: Icon(Icons.bookmark_add_outlined), // Icon auswählen
                  label: Text('WWM-Modus'), // Text für den Button
                ),
                SizedBox(height: 50), // Abstand zwischen den Icons
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/gameModeGuessing");
                  },
                  icon: Icon(Icons.abc), // Icon auswählen
                  label: Text('Testat-Modus'), // Text für den Button
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
