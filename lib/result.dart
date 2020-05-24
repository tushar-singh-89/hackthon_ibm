//made by PUNEET SARAN
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 0) {
      resultText =
          'YOUR HOMEKIT SCORE SAYS YOU ARE COMPLETELY SAFE \n\n YOUR SAFETY IS OUR PRIORITY, PLEASE USE THIS HOME KIT WHENEVER YOU NEED AND STOP CORONA FROM ENTERING YOUR HOME';
    } else if (0 < resultScore && resultScore <= 2) {
      resultText =
          'YOUR HOMEKIT SCORE IS VERY LOW, YOU ARE SAFE BUT YOU SHOULD TAKE CARE AND STAY IN YOUR HOME  \n\n YOUR SAFETY IS OUR PRIORITY, PLEASE USE THIS HOME KIT WHENEVER YOU NEED AND STOP CORONA FROM ENTERING YOUR HOME';
    } else if (0 < resultScore && resultScore <= 7) {
      resultText =
          'YOUR HOMEKIT SCORE IS LOW, YOU ARE NOT THAT PRONE TO DANGER CONSIDER CONTACTING DOCTOR NO COMPULSORY TO BE PRESENT THERE, AND SHOULD CONSIDER HOME QUARATINE \n\n YOUR SAFETY IS OUR PRIORITY, PLEASE USE THIS HOME KIT WHENEVER YOU NEED AND STOP CORONA FROM ENTERING YOUR HOME';
    } else if (7 < resultScore && resultScore <= 12) {
      resultText =
          'YOUR HOME KIT SCORE IS ABOVE LOW, BY YOUR ANSWERS IT SEEMS THAT YOU ARE MORE PRONE OR GOING TO BE A COVID-19 VICTIM ,YOU SHOULD CONSULT A DOCTOR IMMEDIATELY \n\n YOUR SAFETY IS OUR PRIORITY, PLEASE USE THIS HOME KIT WHENEVER YOU NEED AND STOP CORONA FROM ENTERING YOUR HOME';
    } else if (12 < resultScore && resultScore <= 32) {
      resultText =
          'YOUR HOMEKIT SCORE IS MODERATE TO HIGH, BY YOUR ANSWERS IT SEEMS THAT YOU HAVE MAJOR SYMPTOMS OF BEING A COVID-19 PATIENT YOU SHOULD SEEK MEDICAL CARE IMMEDIATELY ,YOU SHOULD CONSULT A DOCTOR IMMEDIATELY \n\n YOUR SAFETY IS OUR PRIORITY, PLEASE USE THIS HOME KIT WHENEVER YOU NEED AND STOP CORONA FROM ENTERING YOUR HOME';
    }else {
      resultText =
          'YOUR HOMEKIT SCORE IS VERY HIGH,BY YOUR ANSWERS YOU ARE  INFECTED WITH COVID-19 \n PLEASE GO TO YOUR NEARBY HOSPITAL IMMEDIATELY \n\n YOUR SAFETY IS OUR PRIORITY, PLEASE USE THIS HOME KIT WHENEVER YOU NEED AND STOP CORONA FROM ENTERING YOUR HOME';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('RESTART YOUR PERSONAL HOME KIT'),
            textColor: Colors.green,
          )
        ],
      ),
    );
  }
}
