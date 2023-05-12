import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:hello/widgets/page_headline_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../modules.dart';

class VocabularySetsPage extends StatefulWidget {
  const VocabularySetsPage({Key? key}) : super(key: key);
  @override
  State<VocabularySetsPage> createState() => _VocabularySetsPageState();
}

class _VocabularySetsPageState extends State<VocabularySetsPage> {
  List<List<dynamic>> csvData = [];

  void loadCSVData() async {
    final rawData = await rootBundle.loadString('/vocabulary_sets/test.csv');
    const csvDecoder = CsvToListConverter(fieldDelimiter: ";");
    List<List<dynamic>> listData = csvDecoder.convert(rawData);
    setState(() {
      csvData = listData;
    });
  }

  @override
  void initState() {
    super.initState();
  }

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
            child: csvData.isEmpty
                ? Center(child: buildSubName('Keine Vokabelsets vorhanden.'))
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: csvData.length,
                    itemBuilder: (context, index) {
                      /*return Card(
                  margin: const EdgeInsets.all(3),
                  color: index == 0 ? Colors.amber : Colors.white,
                  child: ListTile(
                    leading: Text(csvData[index][0].toString()),
                    title: Text(csvData[index][1].toString()),
                  ),
                );*/
                      return Center(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed("/vocabularySetChapter");
                            },
                            style: universalElevatedButtonStyle(),
                            child: Row(
                              children: [
                                universalElevatedButtonText(
                                    "Vokabelset ${index + 1}"),
                                const SizedBox(width: 120.0),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.indigoAccent,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loadCSVData(); // TODO: REPLACE
          //Navigator.of(context).pushNamed(destinationRoute);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
