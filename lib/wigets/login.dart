// import 'package:flutter/material.dart';
// import '../router/app_router.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// enum AccType { Customer, Parchant }

// class _LoginState extends State<Login> {
//   bool _hidePass = true;
//   AccType? accountType = AccType.Customer;
//   final _passFocusNode = FocusNode();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passController = TextEditingController();
//   final TextEditingController _hiddenController = TextEditingController();
//   final _form = GlobalKey<FormState>();
//   List<String?> items = ['Electronic', 'Watches', 'Computers'];
//   String initial = 'Electronic';
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passController.dispose();
//     _hiddenController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     void _sendAuth() async {
//       final isValid = _form.currentState!.validate();
//       if (!isValid) {
//         return;
//       }

//       _form.currentState!.save();
//       // dynamic res = await Navigator.of(context).pushNamed('home', arguments: {
//       //   'email': _emailController.text,
//       //   'pass': _passController.text,
//       //   'type': accountType,
//       //   'drop': initial,
//       // });

//       if (AccType.Parchant == accountType) {
//         AppRouter.route.pushNamed('ParchantPage');
//       } else {
//         AppRouter.route.pushNamed('CustomerPage');
//       }
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('login'),
//         centerTitle: true,
//         backgroundColor: Colors.purple,
//       ),
//       body: Form(
//         key: _form,
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: RadioListTile(
//                       title: Text("Customer"),
//                       value: AccType.Customer,
//                       groupValue: accountType,
//                       onChanged: (AccType? value) {
//                         setState(() {});
//                         accountType = value;
//                       },
//                     ),
//                   ),
//                   Expanded(
//                     child: RadioListTile(
//                       title: Text("Parchant"),
//                       value: AccType.Parchant,
//                       groupValue: accountType,
//                       onChanged: (AccType? value) {
//                         accountType = value;
//                         setState(() {});
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               Container(
//                 alignment: Alignment.center,
//                 child: Text(
//                   'welcome',
//                   style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     'email',
//                     textAlign: TextAlign.right,
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 7,
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {
//                   FocusScope.of(context).requestFocus(_passFocusNode);
//                 },
//                 validator: (value) {
//                   if (value!.isEmpty) return 'This field is requried';
//                   return null;
//                 },
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.all(8.0),
//                   prefixIcon: Icon(Icons.mail),
//                   hintText: 'Write your email',
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'password',
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 7,
//               ),
//               TextFormField(
//                 obscureText: _hidePass,
//                 controller: _passController,
//                 validator: (value) {
//                   if (value!.isEmpty) return 'This field is requried';
//                   return null;
//                 },
//                 onEditingComplete: () {
//                   FocusScope.of(context).requestFocus(new FocusNode());
//                 },
//                 decoration: InputDecoration(
//                   contentPadding: EdgeInsets.all(8.0),
//                   hintText: 'Enter the password',
//                   prefixIcon: IconButton(
//                     icon: _hidePass
//                         ? Icon(Icons.visibility_off)
//                         : Icon(Icons.visibility),
//                     onPressed: () {
//                       setState(() {
//                         _hidePass = !_hidePass;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//               Visibility(
//                 visible: accountType == AccType.Parchant,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       Container(
//                         alignment: Alignment.centerLeft,
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             'This filed hidden for customer',
//                             style: TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 7,
//                       ),
//                       TextFormField(
//                         controller: _hiddenController,
//                         validator: (value) {
//                           if (value!.isEmpty) return 'not empty';
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                           contentPadding: EdgeInsets.all(8.0),
//                           hintText: 'Hide Field',
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(15),
//                         child: DropdownButton<String>(
//                           isExpanded: true,
//                           items: items.map((e) {
//                             return DropdownMenuItem<String>(
//                               child: Text(e!),
//                               value: e,
//                             );
//                           }).toList(),
//                           value: initial,
//                           onChanged: (String? value) {
//                             this.initial = value!;
//                             setState(() {});
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
//                 child: ElevatedButton(
//                   style: ButtonStyle(
//                     backgroundColor:
//                         MaterialStateProperty.all<Color>(Colors.purple),
//                   ),
//                   onPressed: () {
//                     _sendAuth();
//                   },
//                   child: Center(child: Text("Login")),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
