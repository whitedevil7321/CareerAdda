import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Doctor_Exams extends StatefulWidget {
  const Doctor_Exams({super.key});

  @override
  State<Doctor_Exams> createState() => _ExamsState();
}

class _ExamsState extends State<Doctor_Exams> {
  final String applyNowURL = "https://collegedunia.com/exams";

  Future<void> _launchURL() async {
    if (await canLaunch(applyNowURL)) {
      await launch(applyNowURL);
    } else {
      throw 'Could not launch $applyNowURL';
    }
  }

  Widget _buildRow(
    String imageAsset,
    String title,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset(imageAsset),
                    )
                  ],
                ),
                Row(
                  children: [Text(title)],
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: _launchURL,
          child: Text("Apply Now"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Handle the home button action here
          },
        ),
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Handle the Messages button action here
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildRow(
                  "images/jee3.jpeg",
                  "BITSAT 2024",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/jee4.jpeg",
                  "KEAM 2023",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/jee5.jpeg",
                  "WBJEE 2023",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/jee6.jpeg",
                  "TS EAMCET 2023",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/jee9.jpeg",
                  "OJEE 2023",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/j10.jpeg",
                  "AP EAPCET 2023",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/jee11.jpeg",
                  "TS PGECET 2023",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/222.jpeg",
                  "GPAT 2023",
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
