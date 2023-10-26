import 'package:flutter/material.dart';

class Scholarship {
  final String name;
  final String provider;
  final String details;

  Scholarship({
    required this.name,
    required this.provider,
    required this.details,
  });
}

class lawyer_scholer extends StatelessWidget {
  final List<Scholarship> scholarships = [
    Scholarship(
      name: "Aditya Birla Scholarship Programme",
      provider:
          "Provides scholarships to top scholars from the top 21 Institutes like IIMs, IITs, XLRI Jamshedpur, BITS Pilani, and Law Colleges.",
      details:
          "This scholarship covers the academic fees and also the hostel fees of the student. The LLB scholarship amount is INR 1.80 lakhs.",
    ),
    Scholarship(
      name: "Central Sector Scheme of Scholarship",
      provider:
          "Awarded to meritorious students whose family income is below INR 4.5 LPA.",
      details:
          "Students who are above the 80th percentile are eligible to apply for the scholarship. For three years INR 12,000 per annum and in the fourth & fifth-year students will get 20,000 per annum.",
    ),
    Scholarship(
      name: "Fully Funded Science & Law School Scholarship",
      provider:
          "Provided by the Affidavit Institute of Judicial Practice for students from across the world who want to opt for higher studies including UG, Masters, or Ph.D. in Science and Law.",
      details:
          "The scholarships are granted to the universities which come under the 1000 QS rank. The LLB scholarship covers full tuition fees and monthly expenses up to INR 4,000 for postgraduate and INR 65,500 for Ph.D. students.",
    ),
    Scholarship(
      name: "GEV Memorial Merit Scholarship",
      provider:
          "Provided by GEV Scholarship Fund Trust to meritorious undergraduate and postgraduate law students.",
      details:
          "The scholarship amount of INR 2 lakhs per year is given to students which covers their academic fees. Young law scholars are also offered mentorship.",
    ),
    Scholarship(
      name: "Law School Admission Council (LSAC) India Scholarship",
      provider:
          "Provides scholarships to LSAT Indian Candidates for a 5-year LLB program.",
      details: "Offers up to INR 4 lakhs scholarship amount.",
    ),
    Scholarship(
      name: "Nirankari Rajmata Scholarship Scheme",
      provider:
          "Provided by Sant Nirankari Charitable Foundation through ‘Merit-cum-Means’.",
      details: "For LLB scholarship, full tuition fee is paid.",
    ),
    Scholarship(
      name: "PNB Housing Finance Limited Scholarship",
      provider:
          "Initiative of PNB Housing Finance Limited to assist impoverished students enrolling in the Law, MBA/PGDM, and C.A. programs at the Army Institute of Law, Mohali.",
      details:
          "Candidates enrolled in the third or fourth year of a B.A.-LLB program are eligible for this LLB scholarship.",
    ),
    Scholarship(
      name: "Post-Matric Scholarship for Minorities",
      provider:
          "Launched in 2006 for minority communities whose family annual income does not exceed INR 2 LPA.",
      details:
          "LLB scholars are provided tuition fee and maintenance allowance.",
    ),
    Scholarship(
      name: "Post-Matric Scholarship for Students with Disabilities",
      provider:
          "Administered by the government of India's Department of Empowerment of Persons with Disabilities.",
      details:
          "The disability percentage of the student should be above 40%. This scholarship program covers all graduate and postgraduate degrees recognized by the UGC/AICTE. Post-matric scholarship assistance of up to INR 4,000 is offered for meritorious LLB students.",
    ),
    Scholarship(
      name: "Quill Foundation Scholarship",
      provider:
          "Offers scholarships and mentorship to young meritorious LLB students.",
      details:
          "Throughout the LLB program, the students are trained and placed into groups, communities, and law firms. To be eligible for an LLB scholarship, the candidate must have completed their 10+2 and have a minimum of 60% marks in the English subject of Class 12.",
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
              _buildSection("Law Scholarships", scholarships),
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
                  trailing: Text(scholarship.details),
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
