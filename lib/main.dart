import 'package:flutter/material.dart';
import 'package:gsg_assignment1/helper/shared.dart';
import 'package:gsg_assignment1/screens/splash_screen.dart';
import '../router/app_router.dart';
import '../screens/customer_page.dart';
import '../screens/parchant_page.dart';
import '../screens/login.dart';
// import './data/students_data.dart';
// import './models/item.dart';
// import './scaffold_parts/todo_app.dart';
// import './widgets/student_widget.dart';
// import './widgets/text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

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
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SpHelper.spHelper.initSharedPreferences();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}

//widget
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        title: 'Hi',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SpalshScreen(),
        navigatorKey: AppRouter.route.navKey,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routes: {
          'ParchantPage': (ctx) => ParchantPage(),
          'CustomerPage': (ctx) => CustomerPage(),
          'login': (ctx) => Login(),
        },
        // onGenerateRoute: (RouteSettings rs) {
        //   String? name = rs.name;
        //   var args = rs.arguments;
        //   if (name == 'ParchantPage') {
        //     return AppRouter.route.pushPage(ParchantPage(args));
        //   } else if (name == 'CustomerPage') {
        //     return AppRouter.route.pushPage(CustomerPage(args));
        //   }
        // },
      ),
    );
  }
}

// class Screen1 extends StatelessWidget {
//   List<Item> items = [
//     Item('name', 'omar'),
//     Item('country', 'palestine'),
//     Item('city', 'gaza'),
//     Item('street', 'alremal'),
//     Item('phone', '123456'),
//     Item('country code', '+972'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey,
//         title: Text('First App'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: students.map((e) {
//               return StudentWidget(e);
//             }).toList()),
//       ),
//     );
//   }
// }
