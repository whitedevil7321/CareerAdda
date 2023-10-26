import 'package:flutter/material.dart';

class Scholarship {
  final String name;
  final String provider;

  Scholarship({
    required this.name,
    required this.provider,
  });
}

class police_scholer extends StatelessWidget {
  final List<Scholarship> scholarships = [
    Scholarship(
      name: "DBS Scholarship Program",
      provider: "DBS Bank",
    ),
    Scholarship(
      name:
          "Prime Minister’s Scholarship Scheme for Wards of States/UTs Police Personnel 2022-23",
      provider:
          "The Welfare and Rehabilitation Board, Ministry of Home Affairs, Government of India",
    ),
    Scholarship(
      name:
          "Prime Minister’s Scholarship Scheme for Central Armed Police Forces and Assam Rifles 2022-23",
      provider:
          "The Welfare and Rehabilitation Board, Ministry of Home Affairs, Government of India",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scholarships'),
        ),
        body: Container(
          // Set the background color here
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'images/baclk.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ), // Change this to your desired background color
          child: ListView(
            children: [
              _buildSection("Scholarships", scholarships),
              // Add more sections for other categories
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Scholarship> scholarships) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: scholarships.asMap().entries.map((entry) {
            final int index = entry.key;
            final Scholarship scholarship = entry.value;

            return Column(
              children: <Widget>[
                ListTile(
                  title: Text(scholarship.name),
                  subtitle: Text(scholarship.provider),
                ),
                if (index < scholarships.length - 1)
                  Divider(
                    color: Colors.grey,
                    height: 1,
                  ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
