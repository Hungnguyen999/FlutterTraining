import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.resultText});
  final String bmiResult;
  final String resultText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator Result'),
      ),
      body: Column(
        children: [
          const Text(
            'Your Result',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: Colors.white24,
              cardChild: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.add_task,
                      color: Colors.green,
                      size: 50,
                    ),
                    title: Text(
                      'Normal',
                      style: TextStyle(color: Colors.red, fontSize: 30),
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(color: Colors.red, fontSize: 40),
                  ),
                  Text(
                    resultText,
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  BottomButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      buttonTitle: 'Re Calculatee')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
