import 'package:flutter/material.dart';

class Scholarship {
  final String name;
  final String eligibility;
  final String benefits;

  Scholarship({
    required this.name,
    required this.eligibility,
    required this.benefits,
  });
}

class banking_scholer extends StatelessWidget {
  final List<Scholarship> scholarships = [
    Scholarship(
      name: "Post-Matric Scholarship for SC Students, Assam",
      eligibility: "SC students in Class 11 and above",
      benefits: "Up to INR 1,200 per month and other allowances",
    ),
    Scholarship(
      name: "Dr. Ambedkar Medhavi Chhattar Sanshodhit Yojna, Haryana",
      eligibility: "Students of Class 11 and above",
      benefits: "Multiple awards",
    ),
    Scholarship(
      name: "SOF National Science Olympiad (NSO)",
      eligibility: "Class 1 to 12 students",
      benefits: "Up to INR 50,000 and other benefits",
    ),
    Scholarship(
      name: "SOF International Mathematics Olympiad (IMO)",
      eligibility: "12th Passed",
      benefits: "Up to INR 50,000, medals, and certificates",
    ),
    Scholarship(
      name: "ISCA Young Scientist Programme",
      eligibility: "12th Passed",
      benefits: "INR 25,000 and a certificate of merit",
    ),
    Scholarship(
      name: "UGC National Fellowship for Scheduled Caste Students (NFSC)",
      eligibility: "Ph.D. students",
      benefits: "Fellowship up to INR 35,000 pm and other benefits",
    ),
    Scholarship(
      name: "Medhabruti Scholarship After 12th",
      eligibility: "Class 12th & Graduate",
      benefits: "Multiple Awards",
    ),
    Scholarship(
      name: "Post Matric Scholarship for J&K Students",
      eligibility: "11th to PG Students",
      benefits: "Multiple Awards",
    ),
    Scholarship(
      name: "Prime Minister Scholarship After 12th",
      eligibility: "12th Passed",
      benefits: "For Male Student 2000/Female students 2250",
    ),
    Scholarship(
      name: "Nationwide Education and Scholarship Test (NEST)",
      eligibility: "12th Pass",
      benefits: "Up to 50000",
    ),
    Scholarship(
      name: "R D Sethna Loan Scholarship",
      eligibility: "Class 12th Pass & Above",
      benefits:
          "Selected candidates get a loan to complete their higher education",
    ),
    Scholarship(
      name: "Post Matric Scholarship for OBC Students, Tripura",
      eligibility: "12th To PG Students",
      benefits:
          "Maintenance allowance, Reimbursement of compulsory non-refundable fees, Study tour charges, Thesis typing/printing charges, Reader charges for blind students",
    ),
    Scholarship(
      name: "Post-Matric scholarship For SC/ST/OBC Students, Uttarakhand",
      eligibility: "12th to Above",
      benefits: "Up to 1200 INR Per Month",
    ),
    Scholarship(
      name: "Schindler Igniting Minds Scholarship For Diploma Students",
      eligibility: "12th Pass Candidate",
      benefits: "Scholarship up to 20000 INR",
    ),
    Scholarship(
      name: "Inspire Fellowship After 12th",
      eligibility: "Class 12th Pass",
      benefits: "80,000 INR Per Annum",
    ),
    Scholarship(
      name:
          "Post matric Intermediate Scholarship For Minorities, Uttar Pradesh",
      eligibility: "12th Passed",
      benefits: "Variable Awards",
    ),
    Scholarship(
      name:
          "Post-Matric Intermediate Scholarship for SC, ST & General Category, Uttar Pradesh",
      eligibility: "12th Pass Students",
      benefits: "Variable Awards",
    ),
    Scholarship(
      name:
          "Post matric Intermediate Scholarship for OBC Students Uttar Pradesh",
      eligibility: "Class 12th Pass",
      benefits: "Variable Awards",
    ),
    Scholarship(
      name: "Central Sector Scheme Scholarship For College & University",
      eligibility: "12th Passout",
      benefits: "10,000 INR",
    ),
    Scholarship(
      name: "Post Matric Scholarship For EBC Students Manipur",
      eligibility: "12th To PG OBC",
      benefits: "Multiple Awards",
    ),
    Scholarship(
      name: "Post Matric Scholarship for OBC Students Uttarakhand",
      eligibility: "11th To Post-Graduate",
      benefits: "Up to INR 750 per month",
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
                      Text("Benefits: ${scholarship.benefits}"),
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
