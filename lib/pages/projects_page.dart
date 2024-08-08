import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
        backgroundColor: Colors.red.shade200, // Apply theme color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Projects',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade200, // Apply theme color
                ),
              ),
              SizedBox(height: 16),
              ProjectCard(
                title: 'Authentication Assignment',
                description: 'Developed an app with implementation of Firebase Authentication',
                imageUrls: [
                  'assets/mc_auth (1).jpg',
                  'assets/mc_auth (2).jpg',
                  'assets/mc_auth (3).jpg',
                  'assets/mc_auth (4).jpg'
                ],
              ),
              SizedBox(height: 16),
              ProjectCard(
                title: 'Weka Analysis',
                description: 'Description of project 2.',
                imageUrls: [
                  'assets/weka_analysis (1).jpg',
                  'assets/weka_analysis (2).jpg',
                  'assets/weka_analysis (3).jpg',
                  'assets/weka_analysis (4).jpg',
                  'assets/weka_analysis (5).jpg',
                  'assets/weka_analysis (6).jpg',
                  'assets/weka_analysis (7).jpg',
                  'assets/weka_analysis (8).jpg',
                  'assets/weka_analysis (9).jpg',
                  'assets/weka_analysis (10).jpg',
                  'assets/weka_analysis (11).jpg'
                  ],
              ),
              SizedBox(height: 16),
              ProjectCard(
                title: 'Fuzzy Inference System',
                description: 'Developed an app with implementation of Firebase Authentication',
                imageUrls: [
                  'assets/mc_auth (4).jpg',
                  'assets/mc_auth (2).jpg'
                ],
              ),
              // Add more ProjectCards here as needed
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> imageUrls;

  ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200.0, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        imageUrls[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red.shade200, // Apply theme color
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
