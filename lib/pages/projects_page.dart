import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: Center(
        child: Text(
          'This is the Projects page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
