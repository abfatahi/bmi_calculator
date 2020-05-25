import 'package:bmi_calculator/utilities/Constants.dart';
import 'package:bmi_calculator/screens/InputPage.dart';
import 'package:bmi_calculator/utilities/NewCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/utilities//BottonButton.dart';
import 'InputPage.dart';

class ResultPage extends StatelessWidget {
  ResultPage ({@required this.result,@required this.bmiResult,@required this.interpretation});

  final String result;
  final String bmiResult;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: NewCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: kResultStyle,
                  ),
                  Text(
                    bmiResult.toString(),
                    style: kBMIStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                buttonTitle: 'Re-Calculate',
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
