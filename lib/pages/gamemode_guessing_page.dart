import 'package:flutter/material.dart';
import 'package:hello/widgets/page_headline_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';

import '../modules.dart';

class GameModeGuessingPage extends StatefulWidget {
  const GameModeGuessingPage({Key? key}) : super(key: key);
  @override
  State<GameModeGuessingPage> createState() => _GameModeGuessingPageState();
}

class _GameModeGuessingPageState extends State<GameModeGuessingPage> {
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
          const PageHeadlineWidget(text: "Wörter raten"),
          const PageHeadlineWidget(text: "Runde 1/30"),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const PageHeadlineWidget(text: "tear"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Herz'), // Text für den Button
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Hallo'), // Text für den Button
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Liebe'), // Text für den Button
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Träne'), // Text für den Button
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
