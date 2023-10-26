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

class scholer extends StatelessWidget {
  final List<Scholarship> governmentScholarships = [
    Scholarship(
      name: "Pre-matric Scholarship for Students with Disabilities",
      provider:
          "Department of Empowerment of Persons with Disability, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name: "Post Matric Scholarship for Students with Disabilities",
      provider:
          "Department of Empowerment of Persons with Disability, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name: "Pre-Matric Scholarships Scheme for Minorities",
      provider: "Ministry of Minority Affairs, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name: "Post Matric Scholarships Scheme for Minorities",
      provider: "Ministry of Minority Affairs, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name:
          "Merit Cum Means Scholarship for Professional and Technical Courses CS (Minorities)",
      provider: "Ministry of Minority Affairs, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name: "National Means Cum Merit Scholarship",
      provider: "Ministry of Human Resource Development, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name:
          "Central Sector Scheme of Scholarship for College and University Students",
      provider: "Ministry of Human Resource Development, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name: "Prime Minister Scholarship Scheme",
      provider:
          "Kendriya Sainik Board Secretariat, Department of Ex-Servicemen Welfare, Ministry of Defence, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name:
          "Prime Minister’s Scholarship Scheme for Central Armed Police Forces and Assam Rifles",
      provider: "Ministry of Home Affairs, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name: "Prime Minister’s Scholarship Scheme for RPF/RPSF",
      provider:
          "Security Directorate, Ministry of Railways, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name:
          "National Fellowship and Scholarship for Higher Education of ST Students",
      provider: "Ministry of Tribal Affairs, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name:
          "Scholarships for Top Class Education for Students with Disabilities",
      provider:
          "Ministry of Social Justice and Empowerment, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name:
          "Financial Assistance for Education of the Wards of Beedi/Cine/IOMC/LSDM Workers – Pre-Matric",
      provider: "Ministry of Labour and Employment, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name:
          "Financial Assistance for Education of the Wards of Beedi/Cine/IOMC/LSDM Workers",
      provider: "Ministry of Labour and Employment, Government of India",
      applicationPeriod: "August to November",
    ),
    Scholarship(
      name: "Prime Minister’s Research Fellowship (PMRF)",
      provider: "Ministry of Human Resource Development, Government of India",
      applicationPeriod: "March to April",
    ),
    Scholarship(
      name: "Kishore Vaigyanik Protsahan Yojana (KVPY)",
      provider:
          "Department of Science and Technology (DST), Government of India",
      applicationPeriod: "June to August",
    ),
    Scholarship(
      name: "National Talent Search Exam NTSE",
      provider: "National Council of Educational Research and Training (NCERT)",
      applicationPeriod: "August to September",
    ),
    Scholarship(
      name: "Swarna Jayanti Fellowships Scheme",
      provider: "Department of Science & Technology, Government of India",
      applicationPeriod: "March to April",
    ),
  ];

  final List<Scholarship> delhiScholarships = [
    Scholarship(
      name: "Reimbursement of Tuition Fee for SC/ST/OBC/Minority, Delhi",
      provider: "Department for the Welfare of SC/ST/OBC, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name: "Financial Assistance to SC/ST/OBC/Minority, Delhi",
      provider: "Department for the Welfare of SC/ST/OBC, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name:
          "Merit Scholarship for SC/ST/OBC/Minority Students (Class 1 to 12), Delhi",
      provider: "Department for the Welfare of SC/ST/OBC, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name: "Reimbursement of Tuition Fee for SC/ST/OBC/Minorities, Delhi",
      provider:
          "Department for the Welfare of SC/ST/OBC/Minority, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name: "Merit Scholarship to SC/ST/OBC/Minority, Delhi",
      provider: "Department for the Welfare of SC/ST/OBC, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name: "Pre-Matric Scholarship Scheme for OBC Students, Delhi",
      provider: "Department for the Welfare of SC/ST/OBC, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name: "Post Matric Scholarship for OBC Students",
      provider: "Department for the Welfare of SC/ST/OBC, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name: "Pre-Matric Scholarship Scheme for SC Students, Delhi",
      provider: "Department for the Welfare of SC/ST/OBC, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name: "Post Matric Scholarship for SC Students, Delhi",
      provider: "Department for the Welfare of SC/ST/OBC, Government of Delhi",
      applicationPeriod: "December to February",
    ),
    Scholarship(
      name:
          "Financial Assistance to Educationally Backward Minority Students, Delhi",
      provider: "Directorate of Education, Government of NCT of Delhi",
      applicationPeriod: "October to November",
    ),
  ];

  // Add more state scholarships categories and scholarships data as needed

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
              _buildSection("Delhi Scholarships", delhiScholarships),
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
