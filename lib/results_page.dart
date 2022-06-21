import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
                          'Normal',
                          style: kresultText,
                        ),
                        Text(
                          '18.4',
                          style: kbmiText,
                        ),
                        Text('Your BMI is Low ', style: kbmiQuoteText)
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
