// this page shows the number of votes each canfdidate got. 
//it is only visible to ADMIN when he logins

// screens/results_page.dart

import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  final Map<String, int> _voteCounts = {
    'Candidate 1': 10,
    'Candidate 2': 5,
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Voting Results')),
      body:
          ListView.builder(
            itemCount: _voteCounts.length,
            itemBuilder: (context, index) {
              final entry = _voteCounts.entries.toList()[index];
              return ListTile(
                title: Text(entry.key),
                subtitle: Text('Votes: ${entry.value}'),
              );
            },
          ),
    );
  }
}
