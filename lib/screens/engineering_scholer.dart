import 'package:flutter/material.dart';

class Scholarship {
  final String name;
  final String provider;
  final String applicationPeriod;

  Scholarship({
    required this.name,
    required this.provider,
    required this.applicationPeriod,
  });
}

class Engscholer extends StatelessWidget {
  final List<Scholarship> governmentScholarships = [
    Scholarship(
      name:
          "Scholarships for Top Class Education for Students with Disabilities",
      provider:
          "Department of Empowerment of Persons with Disabilities, Ministry of Social Justice and Empowerment, Government of India",
      applicationPeriod: "July to October",
    ),
    Scholarship(
      name: "S.N. Bose Scholars Program",
      provider: "SERB, DST (Govt. of India), IUSSTF & WINStep Forward",
      applicationPeriod: "September to October",
    ),
    Scholarship(
      name:
          "Prime Minister’s Scholarship Scheme for Central Armed Police Forces and Assam Rifles",
      provider:
          "Welfare and Rehabilitation Board, Ministry of Home Affairs, Government of India",
      applicationPeriod: "July to October",
    ),
    Scholarship(
      name: "Prime Minister’s Research Fellowship (PMRF)",
      provider: "Ministry of Human Resource Development, Government of India",
      applicationPeriod: "February to April",
    ),
    Scholarship(
      name: "Post Matric Scholarships Scheme for Minorities",
      provider: "Ministry of Minority Affairs, Government of India",
      applicationPeriod: "July to September",
    ),
    Scholarship(
      name: "Post Matric Scholarship for Students with Disabilities",
      provider:
          "Department of Empowerment of Persons with Disabilities, Ministry of Social Justice and Empowerment, Government of India",
      applicationPeriod: "July to October",
    ),
    Scholarship(
      name:
          "Merit Cum Means Scholarship for Professional and Technical Courses CS (Minorities)",
      provider: "Ministry of Minority Affairs, Government of India",
      applicationPeriod: "July to September",
    ),
  ];

  // Add more scholarships as needed

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
              _buildSection("Government Scholarships", governmentScholarships),
              // Add more sections for other states or categories
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
                  trailing: Text(scholarship.applicationPeriod),
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
