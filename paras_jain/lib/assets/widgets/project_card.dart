import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String link;
  final String tech;
  const ProjectCard({super.key, required this.title,required this.tech, required this.description, required this.link});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 8),

            Text(tech),

            const SizedBox(height: 12),

            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 12),

            TextButton(
              onPressed: () {
                final Uri url = Uri.parse(link);
                launchUrl(url);
              },
              child: const Center(
                child: Text(
                  'View Project',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}