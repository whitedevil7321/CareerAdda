import 'package:elderlyconnect/screens/constranints.dart';
import 'package:elderlyconnect/screens/home_screen.dart';
import 'package:elderlyconnect/widgets/navbar_roots.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  int currentQuestion = 0;

  List<Map<String, dynamic>> quizData = [
    {
      'question': 'Which field would you like to make a meaningful impact in?',
      'options': [
        'Advancing technology and innovation',
        'Improving health and saving lives',
        'Ensuring justice and fairness',
        'Protecting your nation\'s security',
        'Managing and growing wealth',
      ],
    },
    {
      'question':
          'What kind of challenges are you willing to face in your career?',
      'options': [
        'Complex technical problems',
        'Medical emergencies and critical decisions',
        'Legal disputes and negotiations',
        'High-pressure situations and risks',
        'Financial markets and economic trends',
      ],
    },
    {
      'question': 'Which of the following do you find most appealing?',
      'options': [
        'Solving mathematical and scientific puzzles',
        'Conducting research and experiments',
        'Debating and arguing logically',
        'Physical training and discipline',
        'Managing financial resources',
      ],
    },
    {
      'question': 'What do you value most in a career?',
      'options': [
        'Creativity and innovation',
        'Making a positive impact on people\'s lives',
        'Advocating for justice and equality',
        'Loyalty and commitment to your country',
        'Financial stability and growth',
      ],
    },
    {
      'question':
          'Which of the following would you be most excited to learn about?',
      'options': [
        'New technologies and gadgets',
        'Cutting-edge medical treatments',
        'Legal precedents and court cases',
        'Military strategies and tactics',
        'Investment opportunities and financial markets',
      ],
    },
    {
      'question': 'What type of environment do you thrive in?',
      'options': [
        'Laboratories and research settings',
        'Hospitals and healthcare facilities',
        'Courtrooms and legal offices',
        'Military bases and training grounds',
        'Financial institutions and corporate offices',
      ],
    },
    {
      'question': 'What kind of decision-making appeals to you?',
      'options': [
        'Analyzing data and problem-solving',
        'Diagnosing medical conditions',
        'Interpreting laws and regulations',
        'Making quick and critical decisions under pressure',
        'Managing financial portfolios and investments',
      ],
    },
    {
      'question': 'Which of the following is your primary interest?',
      'options': [
        'Inventing new technologies',
        'Saving lives and promoting well-being',
        'Advocating for justice and fairness',
        'National security and defense',
        'Financial planning and wealth management',
      ],
    },
    {
      'question': 'What kind of work environment do you envision for yourself?',
      'options': [
        'High-tech engineering firms',
        'Hospitals and medical facilities',
        'Law firms and courtrooms',
        'Military and defense organizations',
        'Banks and financial institutions',
      ],
    },
    {
      'question': 'Which of the following describes your communication style?',
      'options': [
        'Technical and precise',
        'Compassionate and empathetic',
        'Persuasive and argumentative',
        'Direct and authoritative',
        'Professional and strategic',
      ],
    },
  ];

  void answerQuestion(int selectedOption) {
    setState(() {
      switch (selectedOption) {
        case 0:
          a++;
          break;
        case 1:
          b++;
          break;
        case 2:
          c++;
          break;
        case 3:
          d++;
          break;
        case 4:
          e++;
          break;
      }
      currentQuestion++;
    });

    if (currentQuestion < quizData.length) {
      // Display the next question
    } else {
      // Calculate the preferred stream and display it
      String preferredStream = calculatePreferredStream();
      box.write('key', preferredStream);
      if (preferredStream == "Option A") {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Preferred Stream:'),
            content:
                Text("As per the Calculation You Can be the Great Engineer"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarRoots(),
                      ));
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      } else if (preferredStream == "Option B") {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Preferred Stream:'),
            content: Text("As per the Calculation You Can be the Great Doctor"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      } else if (preferredStream == "Option C") {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Preferred Stream:'),
            content: Text("As per the Calculation You Can be the Great Lawyer"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      } else if (preferredStream == "Option D") {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Preferred Stream:'),
            content: Text(
                "As per the Calculation You Can be the Great Defence Officer"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      } else if (preferredStream == "Option E") {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Preferred Stream:'),
            content: Text("As per the Calculation You Can be the Great Banker"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      }
      print(preferredStream);
      // Show the result to the user
    }
  }

  String calculatePreferredStream() {
    Map<String, int> optionCounts = {
      'Option A': a,
      'Option B': b,
      'Option C': c,
      'Option D': d,
      'Option E': e,
    };

    int maxCount = 0;
    String preferredStream = '';

    optionCounts.forEach((option, count) {
      if (count > maxCount) {
        maxCount = count;
        preferredStream = option;
      }
    });

    return preferredStream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Preference Quiz'),
      ),
      body: currentQuestion < quizData.length
          ? Column(
              children: [
                Text(
                  quizData[currentQuestion]['question'],
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Column(
                  children: List.generate(
                    quizData[currentQuestion]['options'].length,
                    (index) {
                      return RadioListTile(
                        title:
                            Text(quizData[currentQuestion]['options'][index]),
                        value: index,
                        groupValue: null,
                        onChanged: (value) {
                          answerQuestion(value!);
                        },
                      );
                    },
                  ),
                ),
              ],
            )
          : Center(
              child: CircularProgressIndicator(), // Show loading spinner
            ),
    );
  }
}
