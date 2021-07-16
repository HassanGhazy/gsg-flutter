import 'package:flutter/material.dart';
import 'package:gsg_assignment1/helper/shared.dart';
import 'package:gsg_assignment1/screens/login.dart';

class SpalshScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      if (SpHelper.spHelper.getType() == "AccType.Customer") {
        print(1);
        Navigator.of(context).pushNamed('CustomerPage');
      } else if (SpHelper.spHelper.getType() == "AccType.Parchant") {
        print(2);
        Navigator.of(context).pushNamed('ParchantPage');
      } else {
        print(3);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => Login(),
          ),
        );
      }
    });
    return Scaffold();
  }
}
