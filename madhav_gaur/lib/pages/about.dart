import 'package:flutter/material.dart';
import 'package:portfolio/components/list_item.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Text(
            'About Me',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),

          SizedBox(height: 12),

          Text(
            'I am a student and aspiring software developer. '
            'I enjoy building mobile applications using Flutter, '
            'learning Java backend development, and solving '
            'programming problems.',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),

          SizedBox(height: 32),
          Text(
            'Education',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),

          SizedBox(height: 16),
          ListItem(
            icon: Icons.school,
            title: "College",
            subtitle: "Ajay Kumar Garg Engineering College",
          ),
          ListItem(
            icon: Icons.code,
            title: "Branch",
            subtitle: "Btech CSE(AI-ML)",
          ),
          ListItem(
            icon: Icons.calendar_today,
            title: "Year",
            subtitle: "2025-29",
          ),
        ],
      ),
    );
  }
}
