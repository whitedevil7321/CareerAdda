import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class engjobs extends StatefulWidget {
  const engjobs({super.key});

  @override
  State<engjobs> createState() => _ExamsState();
}

class _ExamsState extends State<engjobs> {
  final String applyNowURL =
      "https://www.linkedin.com/jobs/search/?currentJobId=3730451063&f_E=2%2C3%2C4%2C5%2C6&f_F=it%2Ceng&keywords=remote&origin=JOB_SEARCH_PAGE_JOB_FILTER&refresh=true&sortBy=R";

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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
                Container(
                  height: 210,
                  width: screenWidth * 0.9,
                  child: Image.asset("images/piechart.png"),
                ),
                _buildRow(
                  "images/e1.png",
                  "Java Technical Lead",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/e2.png",
                  "Azure Kubernetes",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/e3.png",
                  "Engineer",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/e4.png",
                  "Mid-Stack Engineer",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/e5.png",
                  "Senior Vue.JS Developer",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/e6.png",
                  "Technology Lead",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/e7.png",
                  "Trainee Junior Engineer",
                ),
                SizedBox(height: 10),
                _buildRow(
                  "images/e8.png",
                  "Java Technical Lead",
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
