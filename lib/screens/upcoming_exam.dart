import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Exams extends StatefulWidget {
  const Exams({super.key});

  @override
  State<Exams> createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'images/baclk.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildRow(
                  "images/222.jpeg",
                  "JEE Main 2024",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/jee1.jpeg",
                  "JEE ADVANCED 2024",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/jee2.jpeg",
                  "GATE 2024",
                ),
                SizedBox(height: 10),
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
                  "images/jrr7.jpeg",
                  "VITEEE 2024",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/jee8.jpeg",
                  "COMEDK UGET 2024",
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
                  "KCET2023",
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
