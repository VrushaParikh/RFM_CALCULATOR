import 'package:flutter/material.dart';
import 'package:rfmcalulator/constant.dart';
import 'reusablecard.dart';
import 'bottom_button.dart';
import 'brain.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.rfmResult,
      @required this.resultText,
      @required this.inter});
  final String rfmResult;
  final String resultText;
  final String inter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('RFM CALCULATOR'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Your Result',
                  style: kTitleText,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          rfmResult,
                          style: kBMITextStyle,
                        ),
                        Text(
                          '%',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    Text(
                      inter.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
