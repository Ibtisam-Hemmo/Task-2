import 'package:flutter/material.dart';
import 'package:task1/login.dart';
import 'package:task1/products.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
              title: Center(
                child: Text('Menu'),
              ),
              backgroundColor: const Color.fromARGB(255, 77, 15, 63),
              automaticallyImplyLeading: false),
          ListTile(
            leading:
                Icon(Icons.shop, color: const Color.fromARGB(255, 77, 15, 63)),
            title: Text('Shop'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Product()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment,
                color: const Color.fromARGB(255, 77, 15, 63)),
            title: Text('Designs'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Product()));
            },
          ),
          Divider(),
          ListTile(
              leading: Icon(Icons.edit,
                  color: const Color.fromARGB(255, 77, 15, 63)),
              title: Text('Book Designs'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Product()));
              }),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app,
                color: const Color.fromARGB(255, 77, 15, 63)),
            title: Text('log out'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
