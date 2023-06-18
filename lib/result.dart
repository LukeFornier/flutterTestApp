import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String failText = 'Failed';
    String successText = 'Success';

    return resultScore < 4 ? failText : successText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 69,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Score $resultScore',
            style: TextStyle(
              fontSize: 48,
            ),
          ),
        ],
      ),
    );
  }
}
