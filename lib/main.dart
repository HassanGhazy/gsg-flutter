import 'package:flutter/material.dart';
import './data/students_data.dart';
import './models/item.dart';
import './scaffold_parts/todo_app.dart';
import './widgets/student_widget.dart';
import './widgets/text_widget.dart';

/*
- define model of students that contains this attributes
1- student name
2- arabic grade, english grade, math grade
3- school name
4- class Name
---------------------------
define suitable ui that will display all student features and 
show his average in suitable place


*/
void main() {
  runApp(MaterialApp(home: TodoPage()));
}

//widget
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  List<Item> items = [
    Item('name', 'omar'),
    Item('country', 'palestine'),
    Item('city', 'gaza'),
    Item('street', 'alremal'),
    Item('phone', '123456'),
    Item('country code', '+972'),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('First App'),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: students.map((e) {
              return StudentWidget(e);
            }).toList()),
      ),
    );
  }
}
