import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/pages/about_me.dart';
import 'package:portfolio/pages/project.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Portfolio App', 
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 10,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('About Me'),
              onTap: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Projects'),
              onTap: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProjectPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 50.0,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('lib/assets/images/profile.jpeg'),
                ),
                SizedBox(height: 40),
                Column(
                  children: [
                    Text(
                      'Paras Jain', textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Flutter Developer | Aspiring Software Engineer',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 30),
                    BottomAppBar(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 11.0),
                          child: Column(
                            children: [
                              IconButton(
                                icon: Icon(Icons.linked_camera),
                                onPressed: () {
                                  final url = Uri.parse(
                                    'https://www.linkedin.com/in/paras-j-97030a280/',
                                  );
                              
                                  launchUrl(url);
                                },
                              ),
                              Text('LinkedIn', style: TextStyle(fontSize: 8)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 11.0),
                          child: Column(
                            children: [
                              IconButton(
                                icon: Icon(Icons.code),
                                onPressed: () {
                                  final url = Uri.parse('https://github.com/parshw1');
                              
                                  launchUrl(url);
                                },
                              ),
                              Text('GitHub', style: TextStyle(fontSize: 8)),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.email),
                              onPressed: () {
                                final url = Uri.parse(
                                  'mailto:parasj7765r@gmail.com',
                                );
                                launchUrl(url);
                              },
                            ),
                            Text('Email', style: TextStyle(fontSize: 8)),
                          ],
                        ),
                      ]
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}