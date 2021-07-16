// import 'package:flutter/material.dart';
// import 'package:gsg_assignment1/screens/login.dart';

// class Welcome extends StatelessWidget {
//   var Args;
//   Welcome(this.Args);
//   @override
//   Widget build(BuildContext context) {
//     // final Map<String?, Object?> data =
//     // ModalRoute.of(context)!.settings.arguments as Map<String?, Object?>;

//     // String? email = data['email'] as String;
//     // String? pass = data['pass'] as String;
//     // String? drop = data['drop'] as String;
//     // AccType? type = data['type'] as AccType;
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Text("Welcome"),
//         centerTitle: true,
//         backgroundColor: Colors.red[400],
//         actions: [
//           IconButton(
//               onPressed: () async {
//                 Navigator.of(context).pop("Bye Bye");
//               },
//               icon: Icon(Icons.arrow_back))
//         ],
//       ),
//       backgroundColor: Color(0xffeeeeee),
//       body: Card(
//         child: ListTile(
//           title: Text('${Args['email']}'),
//           subtitle: Text('My password: ${Args['pass']}, Please Don\'t Hack me'),
//           trailing: Text(
//               '${Args['type'].toString().substring(Args['type'].toString().indexOf('.') + 1)}'),
//           leading: (Args['type'] == AccType.Parchant)
//               ? Text('${Args['drop']}')
//               : null,
//         ),
//       ),
//     );
//   }
// }
