//made by PUNEET SARAN
import 'package:crack_the_covid/result.dart';
import 'package:flutter/material.dart';

//import './question.dart';
//import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(FCB());
}

class FCB extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FCBState();
  }
}

class FCBState extends State<FCB> {
  final questions = const [
    // instead of final and const we can use static const before question nothing else
    {
      'questionText': 'ME SAFE, WE SAFE, YOU SAFE',
      'answer': [{'text':'NEXT', 'score': 0}],
    },
    {
      'questionText': 'PLEASE PROVIDE YOUR CORRECT DETAILS, BECAUSE THAT HELPS ALL OF US TO STOP SPREADING COVID 19 AND MAKE OUR EARTH A BETTER PLACE AGAIN ',
      'answer': [{'text':'AGREE', 'score': 0}],
    },
    {
      'questionText': 'IN WHICH OF THE FOLLOWING AGE RANGE DO YOU CAME UNDER  ',
      'answer': [{'text':'1-10', 'score': 1},{'text':'11-30','score':0},{'text':'31-60','score':0},{'text':'61-100','score':1}],
    },
    {
      'questionText': 'WHAT IS YOUR GENDER',
      'answer': [{'text':'FEMALE','score': 0},{'text':'MALE', 'score':0},{'text':'OTHER', 'score' :0 }],
    },
    {
      'questionText': 'DO YOU HAVE COLD',
      'answer': [{'text':'YES', 'score':1}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'DO YOU HAVE FEVER',
      'answer': [{'text':'YES', 'score': 1}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'FOR HOW MANY DAYS DO YOU HAVE THE FEVER',
      'answer': [{'text':'1-3 DAYS', 'score': 1}, {'text':'3-7 DAYS', 'score': 2}, {'text':'MORE THAN 7 DAYS','score':3},{'text':'NO','score':0}],
    },
    {
      'questionText': 'HOW BAD IS YOUR FEVER',
      'answer': [{'text':'HIGH', 'score': 1}, {'text':'LOW', 'score': 0}, {'text':'I DONT HAVE FEVER', 'score':0}],
    },
    {
      'questionText': 'DO YOU HAVE RUNNING NOSE',
      'answer': [{'text':'YES', 'score': 1}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'ARE YOU FEELING TIRED',
      'answer': [{'text':'YES', 'score': 1}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'DO YOU FEEL THAT YOU HAVE LOST THE SENSE OF TASTE',
      'answer': [{'text':'YES', 'score': 1}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'DO YOU HAVE SORE THROAT',
      'answer': [{'text':'YES', 'score': 5}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'DO YOU HAVE MUSCLE PAIN',
      'answer': [{'text':'YES', 'score': 1}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText':'DO YOU HAVE BREATHING DIFFICULTY',
      'answer': [{'text':'YES', 'score': 5}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'DO YOU FEEL PERSISTENT PAIN AND PRESSURE IN THE CHEST',
      'answer': [{'text':'YES', 'score': 5}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'DO YOU HAVE BLUISH LIPS',
      'answer': [{'text':'YES', 'score': 5}, {'text':'NO', 'score': 0}],
    },
    {
      'questionText': 'DO YOU HAVE TRAVELLING HISTORY IN LAST 14 DAYS',
      'answer': [{'text':'YES', 'score': 5}, {'text':'NO', 'score': 0}],
    },
    
    {
      'questionText': ' IF YOU HAVE A TRAVELLING HISTROY HOW DID YOU REACH WHERE YOU ARE NOW',
      'answer': [{'text':'PERSONAL VEHICLE', 'score': 1}, {'text':'PUBLIC TRANSPORT', 'score': 5}, {'text':'I DID NOT TRAVEL ANYWHERE','score':0}],
    },
    {
      'questionText':'DO YOU HAVE ANY OF THE FOLOWING DISEASE AS MEDICAL HISTORY',
      'answer': [{'text':'DIABETES AND RESPIRATORY PROBLEM', 'score': 2}, {'text':'BLOOD PRESSURE', 'score': 1}, {'text':'RESPIRATORY DISEASE','score':1}, {'text':'HEART PROBLEM','score':1}, {'text':'NO I DO NOT HAVE MEDICAL HISTORY','score':0}],
    },
    {
      'questionText': 'DO YOU CAME IN CONTACT WITH ANY PERSON WHO HAVE BEEN FOUND COVID-19 POSITIVE',
      'answer': [{'text':'YES', 'score': 5}, {'text':'NO', 'score': 0}],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;



void resetQuiz(){
    setState(() {
      questionIndex=0;
      totalScore=0;
      
    });
    
  }

  void answerQuestion(int score) {
    totalScore = totalScore + score ;
    setState(() {
      questionIndex = questionIndex + 1;

      // print('answer chosen');
    });

    print(questionIndex);
    if (questionIndex < questions.length) {
      print('next question');
    } else {
      print('YOU ARE INFECTED WITH COVID 19');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('CRACK-THE-COVID IBM'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
