import 'package:flutter/material.dart';

class ParchantPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Hi Parchant"),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff1d1d1d),
      body: Center(
        child: Text(
          "Welcome Back",
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
