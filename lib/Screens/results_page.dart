import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/Screens/input_page.dart';
import 'package:flutter/material.dart';
import '../Componets/reusable_card.dart';
import '../Componets/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.resultText,
      required this.bmiResults,
      required this.interpretation});
  final String resultText;
  final String bmiResults;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: ktitleText,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        resultText.toUpperCase(),
                        style: kresultText,
                      ),
                      Text(
                        bmiResults,
                        style: kbmiText,
                      ),
                      Text(
                        interpretation,
                        style: kbmiQuoteText,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                  buttonText: 'RE-CALCULATE',
                  onTap: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        ));
  }
}
