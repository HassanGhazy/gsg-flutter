import 'package:flutter/material.dart';
import 'package:gsg_assignment1/helper/shared.dart';
import 'package:gsg_assignment1/screens/login.dart';

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi Customer"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        leading: IconButton(
            onPressed: () {
              SpHelper.spHelper.removeKey('name');
              SpHelper.spHelper.removeKey('type');
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => Login()),
                  (route) => false);
            },
            icon: Icon(Icons.logout)),
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
