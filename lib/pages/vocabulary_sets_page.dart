
import 'package:flutter/material.dart';
import 'package:hello/widgets/elevated_button_widget.dart';
import 'package:hello/widgets/form_field_widget.dart';
import 'package:hello/widgets/password_form_field_widget.dart';
import 'package:hello/widgets/sub_headline_page_widget.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Vokabbel",
        ),
      ),
      body: Column(
        children: [
          const SubHeadlineWidget(text: "Spielerisch Sprachen lernen"),
          const SubHeadlinePageWidget(text: "Vokabelsets"),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: const [
                Text("Irgendwas mit Vokabelsets")
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Function that defines the ListView for current Login-Page
  ListView buildLoginListView() {
    return ListView(
      shrinkWrap: true,
      children: const [
        Text("Irgendwas mit Vokabelsets."),
      ],
    );
  }
}
