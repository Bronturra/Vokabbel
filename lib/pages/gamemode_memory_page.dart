import 'package:flutter/material.dart';
import 'package:hello/widgets/page_headline_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';

import '../modules.dart';

class GameModeMemoryPage extends StatefulWidget {
  const GameModeMemoryPage({Key? key}) : super(key: key);
  @override
  State<GameModeMemoryPage> createState() => _GameModeMemoryPageState();
}

class _GameModeMemoryPageState extends State<GameModeMemoryPage> {
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
          const PageHeadlineWidget(text: "Wörter Memory"),
          const PageHeadlineWidget(text: "Runde 1/6"),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Englisch"),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Hello'), // Text für den Button
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Heart'), // Text für den Button
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('love'), // Text für den Button
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('tear'), // Text für den Button
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('pain'), // Text für den Button
                    ),
                  ],
                ),
                SizedBox(width: 24), // Abstand zwischen den Icons
                Column(
                  children: [
                    Text("Deutsch"),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Träne'), // Text für den Button
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Schmerz'), // Text für den Button
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Hallo'), // Text für den Button
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Liebe'), // Text für den Button
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Herz'), // Text für den Button
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
