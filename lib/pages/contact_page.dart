import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: Text(
          'This is the Contact page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
