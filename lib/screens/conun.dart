import 'package:elderlyconnect/screens/conference.dart';
import 'package:elderlyconnect/screens/home.dart';
import 'package:elderlyconnect/screens/volapp.dart';
import 'package:elderlyconnect/screens/volappointment_screen3.dart';
import 'package:elderlyconnect/screens/volappointment_screen4.dart';
import 'package:elderlyconnect/screens/volcall1.dart';
import 'package:elderlyconnect/screens/volcall2.dart';
import 'package:elderlyconnect/screens/volcall3.dart';
import 'package:elderlyconnect/screens/volcall4.dart';
import 'package:flutter/material.dart';

import 'package:elderlyconnect/screens/volappointment_screen1.dart';

class conun extends StatelessWidget {
  List imgs = [
    "vol4.png",
    "vol3.png",
    "vol3.png",
    "vol4.png",
  ];
  List volaname = [
    "Purushottam Aher",
    "Purushottam Jagdale",
    "Mahendra Dhanray",
    "Mohan Bagul",
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
        title: Text('Councieler'),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
              // Handle the Messages button action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Hey!! Make an Video Call ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => volvideoCalling1(),
                          ));
                    },
                    child: Container(
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 29, 101, 169),
                              Color.fromARGB(255, 76, 56, 209),
                              const Color.fromARGB(255, 255, 255, 255),
                            ],
                            stops: [
                              0.0,
                              0.5,
                              1.0
                            ], // Smooth transition from red to blue
                          )),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 70, // Set the width of the container
                                  height: 70, // Set the height of the container
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Image.asset(
                                    'images/vol4.png', // Replace with the path to your image asset
                                    // You can adjust the image fit as needed
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(width: 40),
                              Row(
                                children: [
                                  Text(
                                    volaname[0],
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                children: [Text("Rating: 4.9")],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => volvideoCalling2(),
                              ));
                        },
                        child: Container(
                          width: screenWidth * 0.9,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromARGB(255, 29, 101, 169),
                                  Color.fromARGB(255, 76, 56, 209),
                                  const Color.fromARGB(255, 255, 255, 255),
                                ],
                                stops: [
                                  0.0,
                                  0.5,
                                  1.0
                                ], // Smooth transition from red to blue
                              )),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width:
                                          70, // Set the width of the container
                                      height:
                                          70, // Set the height of the container
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        'images/vol4.png', // Replace with the path to your image asset
                                        // You can adjust the image fit as needed
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(width: 40),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        volaname[1],
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [Text("Rating: 4.9")],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => volvideoCalling3(),
                              ));
                        },
                        child: Container(
                          width: screenWidth * 0.9,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromARGB(255, 29, 101, 169),
                                  Color.fromARGB(255, 76, 56, 209),
                                  const Color.fromARGB(255, 255, 255, 255),
                                ],
                                stops: [
                                  0.0,
                                  0.5,
                                  1.0
                                ], // Smooth transition from red to blue
                              )),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width:
                                          70, // Set the width of the container
                                      height:
                                          70, // Set the height of the container
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        'images/vol4.png', // Replace with the path to your image asset
                                        // You can adjust the image fit as needed
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(width: 40),
                                  Row(
                                    children: [
                                      Text(
                                        volaname[2],
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [Text("Rating: 4.9")],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => volvideoCalling4(),
                              ));
                        },
                        child: Container(
                          width: screenWidth * 0.9,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromARGB(255, 29, 101, 169),
                                  Color.fromARGB(255, 76, 56, 209),
                                  const Color.fromARGB(255, 255, 255, 255),
                                ],
                                stops: [
                                  0.0,
                                  0.5,
                                  1.0
                                ], // Smooth transition from red to blue
                              )),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width:
                                          70, // Set the width of the container
                                      height:
                                          70, // Set the height of the container
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 4,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        'images/vol4.png', // Replace with the path to your image asset
                                        // You can adjust the image fit as needed
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(width: 40),
                                  Row(
                                    children: [
                                      Text(
                                        volaname[3],
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [Text("Rating: 4.9")],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
