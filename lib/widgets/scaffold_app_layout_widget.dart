import 'package:flutter/material.dart';
import 'package:hello/widgets/sub_headline_page_widget.dart';
import 'package:hello/widgets/sub_headline_widget.dart';


class ScaffoldAppLayoutWidget extends StatelessWidget {
  const ScaffoldAppLayoutWidget(
      {super.key, required this.subname, required this.buildListview});

  final String subname;
  final Widget buildListview;

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.indigoAccent,
        elevation: 0.0,
        title: const Text(
          "Anmeldung",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
      body: Column(
        children: [
          const SubHeadlineWidget(text: "Spielerisch Sprachen lernen"),
          SubHeadlinePageWidget(text: subname),
          Expanded(
            child: buildListview,
          ),
        ],
      ),
    );
  }
}
