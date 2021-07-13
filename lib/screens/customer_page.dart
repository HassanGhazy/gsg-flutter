import 'package:flutter/material.dart';

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi Customer"),
        centerTitle: true,
        backgroundColor: Colors.purple,
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
