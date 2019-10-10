import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Renuka Kelkar'),
            accountEmail: Text('renuka@xyz.com'),
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.white
                ,child: Icon(Icons.assignment_ind)),
          ),
          ListTile(
            trailing: Icon(Icons.beenhere),
            title: Text('Terms and Conditions'),

          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.assistant),
            title: Text('FAQ'),

          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.exit_to_app),
            title: Text('Logout'),

          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.close),
            title: Text('Close'),
            onTap: ()=>Navigator.of(context).pop(),

          ),
        ],
      ),


    );
  }


}