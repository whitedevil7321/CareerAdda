import 'package:elderlyconnect/screens/banking_scholer.dart';
import 'package:elderlyconnect/screens/banking_upcoming_exam.dart';
import 'package:elderlyconnect/screens/bankingjob.dart';
import 'package:elderlyconnect/screens/careerpath.dart';
import 'package:elderlyconnect/screens/constranints.dart';
import 'package:elderlyconnect/screens/conun.dart';
import 'package:elderlyconnect/screens/doct_job.dart';
import 'package:elderlyconnect/screens/doctor_scholer.dart';
import 'package:elderlyconnect/screens/doctor_upcoming_exam.dart';
import 'package:elderlyconnect/screens/eng_jobs.dart';
import 'package:elderlyconnect/screens/engineering_scholer.dart';
import 'package:elderlyconnect/screens/home.dart';
import 'package:elderlyconnect/screens/indus.dart';
import 'package:elderlyconnect/screens/lawyer_job.dart';
import 'package:elderlyconnect/screens/lawyer_scholer.dart';
import 'package:elderlyconnect/screens/lawyer_upcoming_exams.dart';
import 'package:elderlyconnect/screens/police_upcoming_exam.dart';
import 'package:elderlyconnect/screens/policejob.dart';
import 'package:elderlyconnect/screens/upcoming_exam.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
              // Handle the Messages button action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
                side: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'images/baclk.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.85,
                                      height: screenHeight * 0.2,
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 120, 213, 106),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 48.0,
                                            color: Colors.white,
                                          ),
                                          SizedBox(height: 8.0),
                                          Text(
                                            'Take A Career Survey',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            if (box.read('key') == "Option A") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Exams(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option B") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Doctor_Exams(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option C") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        lawyer_Exams(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option D") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        police_Exams(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option E") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        banking_Exams(),
                                                  ));
                                            } else {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                        "Important Notice"),
                                                    content: Text(
                                                        "Firstly Attempt the Quiz"),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text("OK"),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop(); // Close the dialog
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child:
                                                Image.asset("images/111.jpeg"),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Upcoming Exam",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      industries(),
                                                ));
                                            // Handle the tap action for the second image here
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child:
                                                Image.asset("images/222.jpeg"),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Industries",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            if (box.read('key') == "Option A") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Engscholer(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option B") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        doct_scholer(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option C") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        lawyer_scholer(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option D") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        police_Exams(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option E") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        banking_scholer(),
                                                  ));
                                            } else {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                        "Important Notice"),
                                                    content: Text(
                                                        "Firstly Attempt the Quiz"),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text("OK"),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop(); // Close the dialog
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                            // Handle the tap action for the third image here
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child:
                                                Image.asset("images/333.jpeg"),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Scholerships",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      carrerPath(),
                                                ));
                                            // Handle the tap action for the third image here
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child: Image.asset(
                                                "images/Career.jpg"),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("career Path",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            if (box.read('key') == "Option A") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        engjobs(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option B") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        doctjobs(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option C") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Lawyerjobs(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option D") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        policejob(),
                                                  ));
                                            } else if (box.read('key') ==
                                                "Option E") {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        bankingjobs(),
                                                  ));
                                            } else {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: Text(
                                                        "Important Notice"),
                                                    content: Text(
                                                        "Firstly Attempt the Quiz"),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text("OK"),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop(); // Close the dialog
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            }
                                            // Handle the tap action for the third image here
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child:
                                                Image.asset("images/job.jpg"),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Job",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => conun(),
                                                ));
                                            // Handle the tap action for the conciel image here
                                          },
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            child: Image.asset(
                                                "images/conciel.jpg"),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Councieler",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              VisionContainer(),
                              // Add the VisionContainer here
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          NEPContainer3(),
                          SizedBox(
                            height: 10,
                          ),
                          NEPContainer(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VisionContainer extends StatefulWidget {
  @override
  _VisionContainerState createState() => _VisionContainerState();
}

class _VisionContainerState extends State<VisionContainer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 92, 230, 248),
        borderRadius: BorderRadius.circular(20.0), // Increase border radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Vision',
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
                  ? "The vision for a Career Guidance app is to empower users to make informed career choices by providing personalized career recommendations, comprehensive information about various careers, educational resources, job search tools, and opportunities for mentorship and networking. The app should prioritize accessibility, data privacy, and continuous improvement while aiming to make a positive impact on individuals' career journeys."
                  : "The vision for a Career Guidance app is to empower users...",
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

class NEPContainer extends StatefulWidget {
  @override
  _NEPContainerState createState() => _NEPContainerState();
}

class _NEPContainerState extends State<NEPContainer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.pink[100],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Education Policy - Transforming India',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
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
        color: Colors.purple[400],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About CareerAdda',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
            ),
            child: Text(
              isExpanded
                  ? "A career guidance app is a mobile application designed to assist individuals in making informed career decisions. It offers features like personalized career recommendations, comprehensive career information, educational resources, job search tools, and opportunities for mentorship and networking. The app prioritizes accessibility, data privacy, and continuous improvement to positively impact users' career journeys.."
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
          SizedBox(height: 16.0), // Add some space
          Text(
            '',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
