import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; // function
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink[200],
          foregroundColor: Colors.black,
        ),
        child: Text(answerText), // display text here
        onPressed: selectHandler, // call function here
      ),
    );
  }
}
