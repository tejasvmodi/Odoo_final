import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(child: Text("V")),
              accountName: Text("Vishal"),
              accountEmail: Text("Vishal@gmail.com"),
            ),
            ListTile(
              
              title: Text("Request Books"),
              leading: Icon(Icons.request_page),
            ),
            ListTile(
            
              title: Text("View Issued Book"),
              leading: Icon(Icons.view_agenda_outlined),
            ),
          ],
        )
    );
     
  }
}
