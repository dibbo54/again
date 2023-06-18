// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:micard/question.dart';
// import 'package:micard/quiz_brain.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
//
// QuizBrain quizBrain = QuizBrain();
//
// void main() => runApp(Quizzler());
//
// class Quizzler extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade900,
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10.0),
//             child: QuizPage(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class QuizPage extends StatefulWidget {
//   const QuizPage({Key? key}) : super(key: key);
//
//   @override
//   State<QuizPage> createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   List<Icon> scoreKeeper = [];
//
//   void checkAnswer(bool? userpickedAnswer) {
//     var userPickedAnswer = userpickedAnswer;
//     //bool userpickedAnswer;
//     bool? correctAnswer = quizBrain.getCorrectAnswer();
//     setState(() {
//       if (quizBrain.isFinished() == true) {
//         Alert(
//           context: context,
//           title: 'Finished!',
//           desc: 'You\'ve reached the end of the quiz.',
//         ).show();
//         quizBrain.reset();
//
//         scoreKeeper = [];
//       }
//       {
//         if (userPickedAnswer == correctAnswer) {
//           scoreKeeper.add(Icon(
//             Icons.check,
//             color: Colors.green,
//           ));
//         } else {
//           scoreKeeper.add(Icon(
//             Icons.close,
//             color: Colors.red,
//           ));
//         }
//         quizBrain.nextQuestion();
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Expanded(
//           flex: 5,
//           child: Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Center(
//               child: Text(
//                 quizBrain.getQuestionText()!,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 25.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),
//
//         Expanded(
//           child: Padding(
//               padding: EdgeInsets.all(15.0),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//                 onPressed: () {
//                   checkAnswer(true!);
//                 },
//                 child: const Text(
//                   'True',
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               )),
//         ),
//
//         Expanded(
//           child: Padding(
//               padding: EdgeInsets.all(15.0),
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                 onPressed: () {
//                   checkAnswer(false!);
//                 },
//                 child: const Text(
//                   'False',
//                   style: TextStyle(
//                     fontSize: 20.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               )),
//         ),
//
//         Row(
//           children: scoreKeeper,
//         )
//         //TODO: Add a Row here as your score keeper
//       ],
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         body: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const CircleAvatar(
//                 radius: 50.0,
//                 backgroundImage: AssetImage('images/flag.png'),
//               ),
//               const Text(
//                 'Bangladesh',
//                 style: TextStyle(
//                     fontFamily: 'Pacifico',
//                     fontSize: 40.0,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 'Flutter Developer',
//                 style: TextStyle(
//                     fontFamily: 'Source',
//                     color: Colors.teal[100],
//                     fontSize: 20,
//                     letterSpacing: 2.5,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20,
//                   width: 150,
//                 child: Divider(
//                   color: Colors.teal.shade100,
//                 ),
//
//               ),
//               Card(
//                 //padding: EdgeInsets.all(10),
//                 color: Colors.white,
//                 margin: const EdgeInsets.symmetric(
//                     vertical: 10, horizontal: 25),
//                 child: Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.phone,
//                       color: Colors.teal,
//                     ),
//                     title: Text(
//                       '01317734711',
//                       style: TextStyle(
//                           color: Colors.teal.shade900,
//                           fontFamily: 'Source',
//                           fontSize: 20.0),
//                     ),
//                   ),
//                 ),
//               ),
//               Card(
//                 // padding: EdgeInsets.all(10),
//                 color: Colors.white,
//                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//                 child: Padding(
//                   padding: EdgeInsets.all(25.0),
//                   child: ListTile(
//                     leading: Icon(
//                       Icons.email,
//                       color: Colors.teal,
//                     ),
//                     title: Text(
//                       'dibbo255@gmail.com',
//                       style: TextStyle(
//                           color: Colors.teal.shade900,
//                           fontFamily: 'Source',
//                           fontSize: 20.0),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DicePage extends StatefulWidget {
//   @override
//   _DicePageState createState() => _DicePageState();
// }
//
// class _DicePageState extends State<DicePage> {
//   int leftDiceNumber = 1;
//   int rightDiceNumber = 1;
//
//   void changeDiceFace() {
//     setState(() {
//       leftDiceNumber = Random().nextInt(6) + 1;
//       rightDiceNumber = Random().nextInt(6) + 1;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: TextButton(
//               child: Image.asset(
//                 'images/dice$leftDiceNumber.png',
//               ),
//               onPressed: () {
//                 changeDiceFace();
//               },
//             ),
//           ),
//           //Get students to create the second die as a challenge
//           Expanded(
//             child: TextButton(
//               child: Image.asset(
//                 'images/dice$rightDiceNumber.png',
//               ),
//               onPressed: () {
//                 changeDiceFace();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21)

      ),
      home: InputPage(),
    );
  }
}


