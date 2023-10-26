import 'package:flutter/material.dart';

class Scholarship {
  final String name;
  final String eligibility;
  final String lastDate;
  final String award;

  Scholarship({
    required this.name,
    required this.eligibility,
    required this.lastDate,
    required this.award,
  });
}

class doct_scholer extends StatelessWidget {
  final List<Scholarship> scholarships = [
    Scholarship(
      name: "Nationwide Education & Scholarship Test (NEST Senior)",
      eligibility:
          "For Senior – I category, 1st & 2nd year students of MBBS\nFor Senior – II category, 3rd, and 4th year students of MBBS",
      lastDate: "May 17, 2023",
      award: "Tuition fee assistance up to 50,000 INR",
    ),
    Scholarship(
      name: "International Medical Scholarship Eligibility Test (IM-SET)",
      eligibility:
          "Students studying in Class 12th in any school and in any educational Board\nStudents studying abroad in CBSE-affiliated schools",
      lastDate: "April 2023",
      award: "Up to 100% fee waiver",
    ),
    Scholarship(
      name: "All India Pre-Medical Scholarship Test",
      eligibility:
          "At least 60% marks in senior secondary or appearing for Class 12th exam\nThe age should not exceed 26 years",
      lastDate: "May 30, 2023",
      award: "Full tuition fee waiver",
    ),
    Scholarship(
      name: "All India Youth Scholarship Entrance Examination (AIYSEE)",
      eligibility:
          "Either passed or appearing Class 12th Exam\nAppearing in medical or engineering examinations",
      lastDate: "May 30, 2023",
      award: "Financial Assistance",
    ),
    Scholarship(
      name: "Bigyani Kanya Medha Britti Scholarship",
      eligibility:
          "Candidate must be a girl\nPursuing science courses like a medical degree\nInstitute of study is registered in West Bengal",
      lastDate: "June 30, 2023",
      award: "3,000 INR per month 2,000 INR",
    ),
    Scholarship(
      name: "L’Oréal India Scholarship",
      eligibility:
          "Candidate must be female\nMust have passed Class 12th with PCB and at least 85% marks\nThe age must not exceed 19 years\nWilling to pursue studies in Medical, Engineering etc.\nAnnual family income should not exceed 4 lacs\nCandidate must be enrolled in a graduate programme in an institution or university.",
      lastDate: "No Scholarship transferral for 2023",
      award: "2.5 L INR",
    ),
    Scholarship(
      name: "Sahu Jain Trust Loan Scholarship",
      eligibility:
          "Candidate must be pursuing a degree in a technical field like medical, engineering etc.",
      lastDate: "July 31, 2023",
      award: "25,000 INR per annum",
    ),
    Scholarship(
      name: "Nirankari Rajmata Scholarship Scheme 2022-23",
      eligibility:
          "Applicant must be pursuing studies in technical courses like medical, engineering, CA etc.\nAnnual family income should not exceed 3.5 lacs\nAt least 90% marks in Class 12th\nA regular student at a recognised institute where they were admitted through a competitive written test",
      lastDate: "November 30, 2022",
      award: "50,000 INR or whole tuition fee whichever is less",
    ),
    Scholarship(
      name: "Nurturing Clinical Scientists (NCS) Scheme",
      eligibility:
          "The age must not exceed 32 years\nStudying an MBBS/BDS course with two years left to complete\nPassed all MBBS/BDS exams in first attempt with at least 60%",
      lastDate: "Application Closed",
      award: "1 lac INR per month",
    ),
    Scholarship(
      name: "GSK Scholars Programme 2022-23",
      eligibility:
          "Students in First year of MBBS\nAt least 65% marks in Class 12th\nAnnual family income below 6 L INR\nIndian nationals",
      lastDate: "October 15, 2022",
      award: "1 L INR per year",
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
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Eligibility: ${scholarship.eligibility}"),
                      Text("Last date of application: ${scholarship.lastDate}"),
                      Text("Award: ${scholarship.award}"),
                    ],
                  ),
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
