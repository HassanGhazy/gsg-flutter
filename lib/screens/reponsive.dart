import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Responsive extends StatefulWidget {
  @override
  _ResponsiveState createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive"),
        actions: [
          IconButton(
            onPressed: () {
              Locale local = EasyLocalization.of(context)!.locale;
              EasyLocalization.of(context)!.setLocale(
                  local == Locale("ar") ? Locale("en") : Locale("ar"));
            },
            icon: Icon(Icons.language_sharp),
          )
        ],
      ),
      // backgroundColor: Colors.red,
      body: Column(
        children: [
          Text('name').tr(),
        ],
      ),
    );
  }
}
