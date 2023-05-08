import 'package:flutter/material.dart';
import 'package:hello/pages/gamemode_guessing_page.dart';
import 'package:hello/pages/gamemode_memory_page.dart';
import 'package:hello/pages/gamemode_overview_page.dart';
import 'package:hello/pages/vocabulary_set_chapter_page.dart';
import 'package:hello/pages/vocabulary_sets_page.dart';
import 'package:hello/theme/vokabbel_theme.dart';

import 'pages/login_page.dart';
import 'pages/registration_page.dart';

void main() {
  runApp(const VokabbelApp());
}

class VokabbelApp extends StatelessWidget {
  const VokabbelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vokabbel',
      theme: vokabbelTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context) => const RegistrationPage(),
        '/vocabularySets': (context) => const VocabularySetsPage(),
        '/vocabularySetChapter': (context) => const VocabularySetChapterPage(),
        '/gameModeOverview': (context) => const GameModeOverviewPage(),
        '/gameModeMemory': (context) => const GameModeMemoryPage(),
        '/gameModeGuessing': (context) => const GameModeGuessingPage(),
      },
    );
  }
}