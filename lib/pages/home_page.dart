import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      drawer: NavBar(),
      body: Center(
        child: Text(
          'Welcome to My Portfolio!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
