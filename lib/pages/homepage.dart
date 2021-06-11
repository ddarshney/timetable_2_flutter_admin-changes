import 'package:flutter/material.dart';
import 'package:timetable_2_flutter_admin/widgets/appBar.dart';
import 'package:timetable_2_flutter_admin/pages/my_department.dart';
import 'package:timetable_2_flutter_admin/pages/push_req.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DefaultTabController(
      length: 2,
        child: Scaffold(
          appBar: appBar(

          ),

          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
            body: TabBarView(children: <Widget>[
              PushRequest(),
              MyDepartment(),
            ]
            )
        ),
      ),
    );

  }
}