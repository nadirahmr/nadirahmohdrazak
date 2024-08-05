import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Center(
        child: Text(
          'This is the About Me page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
