import 'package:chat_app_/servives/auth/auth_service.dart';
import 'package:chat_app_/pages/setting_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  void logout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    // Get Auth Service
    final _auth = AuthService();
    _auth.signOut();
    Navigator.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // logo
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                  child: Center(
                      child: Icon(
                    Icons.message,
                    color: Theme.of(context).colorScheme.primary,
                    size: 40,
                  )),
                ),
                // Home List Tile

                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    title: const Text('H O M E'),
                    leading: Icon(
                      Icons.home,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),

                //Setting List Tile

                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    onTap: () {
                        Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingPage()));
                    },
                    title: const Text('S E T T I N G'),
                    leading: Icon(
                      Icons.settings,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Logout Tile
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              onTap: () {
                logout(context);
              },
              title: const Text('L O G O U T'),
              leading: Icon(
                Icons.logout,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
