import '../models/item.dart';

String date = DateTime.now()
    .toIso8601String()
    .substring(0, DateTime.now().toIso8601String().indexOf('T'));
List<Item> items = [
  Item(DateTime.now().toString(), "First Post", date, false),
  Item(DateTime.now().toString(), "second Post", date, false),
  Item(DateTime.now().toString(), "third Post", date, false),
  Item(DateTime.now().toString(), "fourth Post", date, false),
  Item(DateTime.now().toString(), "fifth Post", date, false),
  Item(DateTime.now().toString(), "sixth Post", date, false),
  Item(DateTime.now().toString(), "seventh Post", date, false),
  Item(DateTime.now().toString(), "eigth Post", date, false),
];
