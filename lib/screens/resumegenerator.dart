import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:open_file/open_file.dart';

void main() {
  runApp(MyResumeApp());
}

class MyResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume Builder',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 72, 72, 73),
      ),
      home: ResumeBuilder(),
    );
  }
}

class ResumeBuilder extends StatefulWidget {
  @override
  _ResumeBuilderState createState() => _ResumeBuilderState();
}

class _ResumeBuilderState extends State<ResumeBuilder> {
  String name = '';
  String address = '';
  String email = '';
  String phone = '';
  String objective = '';
  String education = '';
  String workExperience = '';
  String skills = '';

  Future<void> _submitForm() async {
    final resumeContent = generateResumeContent(
      name: name,
      address: address,
      email: email,
      phone: phone,
      objective: objective,
      education: education,
      workExperience: workExperience,
      skills: skills,
    );

    final Directory? externalDir = await getExternalStorageDirectory();
    final resumePath =
        '${externalDir?.path}/my_resume.txt'; // Change the filename as needed
    final file = File(resumePath);
    await file.writeAsString(resumeContent);

    // Show a download button
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resume Generated'),
          content: Text(
              'Your resume has been generated. Do you want to download it?'),
          actions: <Widget>[
            TextButton(
              child: Text('Download'),
              onPressed: () {
                Navigator.of(context).pop();
                _downloadResume(resumePath);
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _downloadResume(String resumePath) {
    OpenFile.open(resumePath);
  }

  String generateResumeContent({
    required String name,
    required String address,
    required String email,
    required String phone,
    required String objective,
    required String education,
    required String workExperience,
    required String skills,
  }) {
    final StringBuffer buffer = StringBuffer();

    buffer.writeln('Name: $name');
    buffer.writeln('Address: $address');
    buffer.writeln('Email: $email');
    buffer.writeln('Phone: $phone');
    buffer.writeln('Objective:');
    buffer.writeln(objective);
    buffer.writeln('Education:');
    buffer.writeln(education);
    buffer.writeln('Work Experience:');
    buffer.writeln(workExperience);
    buffer.writeln('Skills:');
    buffer.writeln(skills);

    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume Builder'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Personal Information',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
                onChanged: (value) {
                  setState(() {
                    address = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone'),
                onChanged: (value) {
                  setState(() {
                    phone = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text('Objective',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Objective Statement',
                ),
                onChanged: (value) {
                  setState(() {
                    objective = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text('Education',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Education Details',
                ),
                onChanged: (value) {
                  setState(() {
                    education = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text('Work Experience',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Work Experience Details',
                ),
                onChanged: (value) {
                  setState(() {
                    workExperience = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text('Skills',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Skills',
                ),
                onChanged: (value) {
                  setState(() {
                    skills = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Background color
                ),
                child: Text(
                  'Generate Resume',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
