import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_assignment1/data/favorite_data.dart';
import 'package:gsg_assignment1/widgets/favorite_widget.dart';
import 'package:gsg_assignment1/widgets/item_widget.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage>
    with SingleTickerProviderStateMixin {
  int index = 0;
  TabController? tabController;
  initTabController() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void initState() {
    super.initState();
    initTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO App'),
          bottom: TabBar(
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favourite',
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
                text: 'Profile',
              ),
            ],
          ),
        ),
        body: TabBarView(
            //physics: NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              ItemWidget(),
              FavoriteWidget(),
              Center(
                child: Text('Profile'),
              ),
            ]),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (tapedIndex) {
              this.index = tapedIndex;
              tabController!.animateTo(tapedIndex);
              setState(() {});
            },
            currentIndex: index,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.perm_identity), label: 'Profile'),
            ]));
  }
}

// class TestScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return TestScreenState();
//   }
// }
// 
// class TestScreenState extends State<TestScreen> {
//   String text = 'stateful widget';
//   bool rememberMe = true;
//   String? newValue;
//   @override
//   Widget build(BuildContext context) {
//     newValue = rememberMe ? 'remeber' : 'notRemeber';
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(text),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 20),
//           child: Row(
//             children: [
//               Checkbox(
//                 value: rememberMe,
//                 onChanged: (newValue) {
//                   setState(() {
//                     rememberMe = newValue!;
//                   });
//                 },
//               ),
//               Text(
//                 rememberMe ? "Accepted" : "Rejected",
//                 style: TextStyle(color: Colors.green),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
