import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback resetValues;

  ResetButton(this.resetValues);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: resetValues,
          child: Icon(
            Icons.refresh,
          ),
        ),
      ],
    );
  }
}
