import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Function(int) onPageSelected;
  final int selectedPage;

  NavBar({
    required this.onPageSelected,
    required this.selectedPage,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red.shade200,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRect(
                  child: Image.asset(
                    'assets/logo.png',
                    width: 80,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Hi! I am Nad',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Home'),
            selected: selectedPage == 0,
            onTap: () => onPageSelected(0),
          ),
          ListTile(
            title: Text('About Me'),
            selected: selectedPage == 1,
            onTap: () => onPageSelected(1),
          ),
          ListTile(
            title: Text('Projects'),
            selected: selectedPage == 2,
            onTap: () => onPageSelected(2),
          ),
          ListTile(
            title: Text('Contact'),
            selected: selectedPage == 3,
            onTap: () => onPageSelected(3),
          ),
        ],
      ),
    );
  }
}
