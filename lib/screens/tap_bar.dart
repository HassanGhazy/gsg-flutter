import 'package:flutter/material.dart';

class MyTapBar extends StatelessWidget {
  const MyTapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.info),
              text: 'More',
            ),
            Tab(
              icon: Icon(Icons.info),
              text: 'More',
            ),
          ]),
        ),
      ),
    );
  }
}
