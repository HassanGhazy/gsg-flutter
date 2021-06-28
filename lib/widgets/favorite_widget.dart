import 'package:flutter/material.dart';
import 'package:gsg_assignment1/data/favorite_data.dart';
import '../data/item_data.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return (myFavorite.isEmpty)
        ? Center(
            child: Text("No Favorite"),
          )
        : ListView.builder(
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.all(15),
                child: ListTile(
                  title: Text(myFavorite[i].name),
                  trailing: Text(myFavorite[i].date),
                  leading: IconButton(
                    onPressed: () {
                      setState(() {
                        myFavorite[i].isFavorite = !myFavorite[i].isFavorite;
                        items[i].isFavorite = !items[i].isFavorite;
                      });
                      var find =
                          items.firstWhere((e) => e.id == myFavorite[i].id);
                      find.isFavorite = !find.isFavorite;
                      myFavorite.removeWhere((e) => e.id == myFavorite[i].id);
                    },
                    icon: (myFavorite[i].isFavorite == true)
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(Icons.favorite),
                  ),
                ),
              );
            },
            itemCount: myFavorite.length,
          );
  }
}
