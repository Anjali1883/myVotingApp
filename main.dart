// this is the main page of the voting app
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'candidates_page.dart';
import 'confirmation_page.dart';
import 'conclusion_screen.dart';

void main() => runApp(VotingApp());

class VotingApp extends StatelessWidget {
  const VotingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voting App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/candidates': (context) => CandidatesPage(),
        '/confirmation': (context) => ConfirmationPage(),
        '/conclusion': (context) => ConclusionPage(),
      },
    );
  }
}
