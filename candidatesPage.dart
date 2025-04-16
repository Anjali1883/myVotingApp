// list of candidates is shown with their details and pictures
// user can select one candidate among all

import 'package:flutter/material.dart';

class CandidatesPage extends StatelessWidget {
  final List<Map<String, String>> candidates = [
    {'name': 'Candidate 1', 'details': 'Details of Candidate 1'},
    {'name': 'Candidate 2', 'details': 'Details of Candidate 2'},
    // Add more candidates as needed
  ];

  CandidatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Candidates'),
      ),
      body: ListView.builder(
        itemCount: candidates.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(candidates[index]['name']!),
            subtitle: Text(candidates[index]['details']!),
            onTap: () {
  // Pass the pollId and selected candidate details to the confirmation page
              Navigator.pushNamed(
                context,
                '/confirmation',
                arguments: {
                  'pollId': '12345', // Replace with actual pollId from your backend
                  'candidate': candidates[index]['name'],
                },
              );
            }

          );
        },
      ),
    );
  }
}
