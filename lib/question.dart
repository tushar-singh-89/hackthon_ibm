//made by PUNEET SARAN
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,// full width of the screen
      margin: EdgeInsets.all(10),//should be double digit value
      child: Text(
        
        questionText,
        
        style: TextStyle(color:Colors.white,fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
