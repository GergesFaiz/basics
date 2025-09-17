import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Boardbutton extends StatelessWidget {
  String label;
  int index;
Function onClick;
  Boardbutton({required this.index,required this.onClick,required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Colors.blue.shade200,
        ),
        onPressed: () {
          onClick(index);
        },
        child: Text(label, style: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.w100)),
      ),
    );
  }
}
