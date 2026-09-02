import "package:flutter/material.dart";
import 'package:portfolio/assets/widgets/project_card.dart';
import 'package:portfolio/assets/widgets/skillchips.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}
class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'Projects',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: [
                 SkillChip(label: 'Flutter'),
                 SkillChip(label: 'Dart'),
                 SkillChip(label: 'Python'),
                 SkillChip(label: 'JavaScript'),
                 SkillChip(label: 'HTML'),
                 SkillChip(label: 'CSS'),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Here are some of the projects I have worked on:',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                width: 400,
                child: ProjectCard(
                  title: 'Currency Converter',
                  tech: 'Flutter',
                  description: 'A simple currency conversion application built using Flutter.',
                  link: 'https://github.com/parshw1/currency_converter',
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                width: 400,
                child: ProjectCard(
                  title: 'I Am Bored',
                  tech: 'Html · CSS ·JavaScript',
                  description: 'A Website which gives you random activities to do when you are bored.',
                  link: 'https://github.com/parshw1/i-am-bored',
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                width: 400,
                child: ProjectCard(
                  title: 'Data Analysis Project',
                  tech: 'Python',
                  description: 'A Data Analysis Project using Python to analyze and visualize data from a CSV file.',
                  link: 'https://github.com/parshw1/Python-Project',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}