import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  String? label;
  String? value;
  TextWidget({this.label, this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Text('$label:'),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              value!,
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
