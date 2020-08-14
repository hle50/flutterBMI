import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.bmiSuggest, @required this.bmiText});
  final String bmiResult;
  final String bmiText;
  final String bmiSuggest;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiText.toUpperCase(),
                      style: kResultText,
                    ),
                    Text(
                    bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      bmiSuggest,
                      style: kBody,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ));
  }
}
