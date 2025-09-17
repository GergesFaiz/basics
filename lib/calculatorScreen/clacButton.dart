import 'package:flutter/material.dart';

class ClacButton extends StatelessWidget {
  String label;
  Function onClick;

  ClacButton({required this.label, required this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FloatingActionButton(
        backgroundColor: label == "="
            ? Colors.green
            : label == "+"
            ? Colors.grey
            : label == "-"
            ? Colors.grey
            : label == "x"
            ? Colors.grey
            : label == "+"
            ? Colors.grey
            : Colors.black,
        onPressed: () {
          onClick(label);
        },
        child: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
      ),
    );
  }
}
