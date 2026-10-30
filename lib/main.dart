
import 'package:flutter/material.dart';

void main() {
  runApp(const MyCVApp());
}

class MyCVApp extends StatelessWidget {
  const MyCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Curriculum Vitae'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            // PROFILE
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                      AssetImage('assets/profile.jpg'),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Lindokuhle Manyisa',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text('IT Student'),

                  SizedBox(height: 10),

                  Text(
                    'I am a motivated student interested in '
                        'technology, programming and software development.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // CONTACT INFORMATION
            const Text(
              'Contact Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    subtitle: Text('78424444'),
                  ),

                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('lindokuhlemanyisa@gmail.com'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // SKILLS
            const Text(
              'My Skills',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(Icons.computer),
                    title: Text('Computer Skills'),
                  ),

                  ListTile(
                    leading: Icon(Icons.code),
                    title: Text('Programming'),
                  ),

                  ListTile(
                    leading: Icon(Icons.people),
                    title: Text('Communication and Teamwork'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // EDUCATION
            const Text(
              'Education',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.school),
                title: Text('Information Technology'),
                subtitle: Text(
                  'Institution: Limkokwing University of Creative Technology',
                ),
              ),
            ),

            const SizedBox(height: 20),

            // EXPERIENCE
            const Text(
              'Experience and Projects',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.work),
                title: Text('Academic Projects'),
                subtitle: Text(
                  'Practising programming and developing '
                      'applications as part of my studies.',
                ),
              ),
            ),

            const SizedBox(height: 20),

            // CERTIFICATIONS
            const Text(
              'Certifications',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Card(
              child: ListTile(
                leading: Icon(Icons.verified),
                title: Text('Additional Qualifications'),
                subtitle: Text(
                  'Add your certificates or completed courses here.',
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Center(
              child: Text(
                'Thank you for viewing my CV!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

