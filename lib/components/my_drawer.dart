import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/mydrawerTile.dart';
import 'package:food_delivery_app/pages/setting_page.dart';
import 'package:food_delivery_app/services/auth/authService.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final _authService = AuthServices();
    _authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(
            text: 'H O M E',
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          MyDrawerTile(
            text: 'S E T T I N G',
            icon: Icons.settings,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPage()));
            },
          ),
          MyDrawerTile(
            text: 'L O G O U T',
            icon: Icons.logout,
            onTap: () {
              logout();
            },
          ),
        ],
      ),
    );
  }
}
