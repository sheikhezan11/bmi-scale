import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Ezan Sheikh'),
            accountEmail: Text('sheikhezan11@gmail.com'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(child: Image.asset('assets/images/ezan.jpg'))),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              image: DecorationImage( image: AssetImage('assets/images/green.jpg'),fit: BoxFit.cover),
            ),

          ),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('Rate Us'),
            onTap: () => print('Coming Soon'),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share with your Friends'),
            onTap: () => print('Copied'),

          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () => print('Copied'),

          ),
          Divider(
            height: 10,
            color: Colors.grey.shade300,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () => print('Copied'),

          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
            onTap: () => print('Copied'),

          ),

        ],

      ),
    );
  }
}
