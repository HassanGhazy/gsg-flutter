import 'package:flutter/material.dart';
import '../router/app_router.dart';
import '../screens/customer_page.dart';
import '../screens/parchant_page.dart';
import '../screens/login.dart';

main() => runApp(MyApp());

//widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
      navigatorKey: AppRouter.route.navKey,
      routes: {
        'ParchantPage': (ctx) => ParchantPage(),
        'CustomerPage': (ctx) => CustomerPage(),
      },
    );
  }
}
