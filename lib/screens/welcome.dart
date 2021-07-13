import 'package:flutter/material.dart';
import 'package:gsg_assignment1/screens/login.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String?, Object?> data =
        ModalRoute.of(context)!.settings.arguments as Map<String?, Object?>;

    String? email = data['email'] as String;
    String? pass = data['pass'] as String;
    String? drop = data['drop'] as String;
    AccType? type = data['type'] as AccType;
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      backgroundColor: Color(0xffeeeeee),
      body: Card(
        child: ListTile(
          title: Text('$email'),
          subtitle: Text('My password: $pass, Please Don\'t Hack me'),
          trailing: Text(
              '${type.toString().substring(type.toString().indexOf('.') + 1)}'),
          leading: (type == AccType.Parchant) ? Text('$drop') : null,
        ),
      ),
    );
  }
}
