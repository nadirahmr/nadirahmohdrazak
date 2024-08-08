import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
        backgroundColor: Colors.red.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade200,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(Icons.phone),
                SizedBox(width: 10),
                Text(
                  '+60 18 963 4642',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(width: 10),
                Text(
                  'nadirahmohdrazak@gmail.com',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.perm_media),
                SizedBox(width: 10),
                Text(
                  'nad_mr (Instagram)',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.code),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _launchURL('https://github.com/nadirahmr'),
                  child: Text(
                    'GitHub',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.web),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () => _launchURL('https://nadirah-s.web.app/'),
                  child: Text(
                    'Portfolio',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
      // Optionally, display an error message to the user
    }
  }
}
