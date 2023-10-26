import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class industries extends StatefulWidget {
  const industries({super.key});

  @override
  State<industries> createState() => _industriesState();
}

class _industriesState extends State<industries> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // Set the background color to grey
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom:
                Radius.circular(20.0), // Set the bottom corners to be rounded
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Handle the home button action here
          },
        ),
        title: Text('Industries'),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Handle the Messages button action here
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('images/baclk.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 300,
              width: screenWidth,
              child: Image.asset("images/aaa.jpeg"),
            ),
            Container(
              height: 300,
              width: screenWidth,
              child: Image.asset("images/bbb.jpeg"),
            ),
            GestureDetector(
              onTap: () {
                // Replace the URL with your desired URL
                String url = 'https://www.ibef.org/industry';
                // Launch the URL
                launch(url);
              },
              child: ListTile(
                title: Center(
                  child: Text(
                    "Look At All Industries !!CLICK ME!!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NEPContainer1(),
            SizedBox(
              height: 20,
            ),
            NEPContainer2(),
            SizedBox(
              height: 20,
            ),
            NEPContainer3(),
          ]),
        ),
      ),
    );
  }
}

class NEPContainer1 extends StatefulWidget {
  @override
  _NEPContainer1State createState() => _NEPContainer1State();
}

class _NEPContainer1State extends State<NEPContainer1> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(
            255, 124, 237, 237), // Set background color to babypink
        borderRadius: BorderRadius.circular(20.0), // Increase border radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Agriculture and Allied Industries',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ),
            child: Text(
              isExpanded
                  ? "About 17.7 lakh people benefit from Public Sector ...\n"
                      "The President of India inaugurated the first globa...\n"
                      "Indian agro-chemical industry tends to grow over 9...\n"
                      "521.27 LMT rice has been estimated for procurement...\n"
                      "Strong demand to drive revenue growth of 14-16% fo..."
                  : "About 17.7 lakh people benefit from Public Sector ...",
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded ? null : TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NEPContainer2 extends StatefulWidget {
  @override
  _NEPContainerState createState() => _NEPContainerState();
}

class _NEPContainerState extends State<NEPContainer2> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(
            255, 218, 140, 207), // Set background color to babypink
        borderRadius: BorderRadius.circular(20.0), // Increase border radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Education Policy \n - Transforming India',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            child: Text(
              isExpanded
                  ? "National Educational Policy (NEP): Union cabinet paved the way for transformative reform in school and higher education system by launching the New National Education Policy (NEP) on 29th July 2020. The policy aims to highlight new avenues for students in different subjects by increasing the choices students have in choosing their subject combinations and eventual careers. No student would be forced for any Language. Higher education will receive flexibility in subjects. There will be multiple entries and exit points with appropriate certification for higher education."
                  : "National Educational Policy (NEP): Union cabinet paved the way for transformative reform...",
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded ? null : TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16.0), // Add some space below the text
          Text(
            "Petromin Corporation KSA and Hindustan Petroleum C...",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Text(
            "There is a US5 billion opportunity for auto part...",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Text(
            "According to Mr. RC Bhargava, Chairman, Maruti Suz...",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Text(
            "TVS Motors intends to invest Rs. 3,900 crore (US ...",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Text(
            "TATA AutoComp Systems signs initial pact with Skod...",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}

class NEPContainer3 extends StatefulWidget {
  @override
  _NEPContainer3State createState() => _NEPContainer3State();
}

class _NEPContainer3State extends State<NEPContainer3> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 124, 237, 237),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Education Policy \n - Transforming India',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            child: Text(
              isExpanded
                  ? "National Educational Policy (NEP): Union cabinet paved the way for transformative reform in school and higher education system by launching the New National Education Policy (NEP) on 29th July 2020. The policy aims to highlight new avenues for students in different subjects by increasing the choices students have in choosing their subject combinations and eventual careers. No student would be forced for any Language. Higher education will receive flexibility in subjects. There will be multiple entries and exit points with appropriate certification for higher education."
                  : "National Educational Policy (NEP): Union cabinet paved the way for transformative reform...",
              style: TextStyle(
                fontSize: 18.0,
              ),
              maxLines: isExpanded ? null : 2,
              overflow: isExpanded ? null : TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Text(
              isExpanded ? 'Read Less' : 'Read More',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16.0), // Add space before additional information
          Text(
            'Aviation News:',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.0), // Add space before each news item

          // Aviation News Items
          Text(
            "The first-ever drone exhibition cum display ‘Bha...",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),

          Text(
            "India to have 42.5 crore air passengers by 2035, s...",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),

          Text(
            "479 RCS-UDAN routes are operational connecting 74 ...",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),

          Text(
            "Increase in the number of passengers under the UDA...",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 8.0),

          Text(
            "Prime Minister Mr. Narendra Modi inaugurated the n...",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
