import 'package:flutter/material.dart';
import 'package:gsg_assignment1/data/favorite_data.dart';
import 'package:gsg_assignment1/models/favorite.dart';
import '../data/item_data.dart';

class ItemWidget extends StatefulWidget {
  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: ListTile(
            title: Text(items[i].name),
            trailing: Text(items[i].date),
            leading: IconButton(
              onPressed: () {
                setState(() {
                  items[i].isFavorite = !items[i].isFavorite;
                });
                if (items[i].isFavorite) {
                  myFavorite.add(new Favorite(items[i].id, items[i].name,
                      items[i].date, items[i].isFavorite));
                } else {
                  myFavorite.removeWhere((e) => e.id == items[i].id);
                }
              },
              icon: (items[i].isFavorite == true)
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(Icons.favorite),
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
