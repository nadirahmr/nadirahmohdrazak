import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../pages/about_page.dart';
import '../pages/contact_page.dart';
import '../pages/projects_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    _buildHomePageContent(),
    AboutPage(),
    ProjectsPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nadirah Mohd Razak'),
        backgroundColor: Colors.red.shade200,
      ),
      drawer: NavBar(
        onPageSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
          Navigator.pop(context);
        },
        selectedPage: _currentIndex, // Pass the current page index here
      ),
      body: _pages[_currentIndex],
    );
  }

  static Widget _buildHomePageContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome to My Website!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get to know me',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade200,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.favorite,
                color: Colors.red.shade200,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(8.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              children: <Widget>[
                _buildGalleryItem('assets/me (1).jpg'),
                _buildGalleryItem('assets/me (2).jpg'),
                _buildGalleryItem('assets/me (3).jpg'),
                _buildGalleryItem('assets/me (4).jpg'),
                _buildGalleryItem('assets/me (5).jpg'),
                // Add more gallery items here
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildGalleryItem(String imagePath) {
    return Card(
      elevation: 4,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
