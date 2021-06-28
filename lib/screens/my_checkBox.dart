import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool? isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isAccepted,
                  onChanged: (value) {
                    isAccepted = value;
                    setState(() {});
                  },
                ),
                Text("Accept our Terms & Conditions"),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: (isAccepted == true) ? Text("Accept") : Text("Reject"),
            ),
          ],
        ),
      ),
    );
  }
}
