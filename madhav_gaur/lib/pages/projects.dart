import 'package:flutter/material.dart';
import 'package:portfolio/components/project_card.dart';
import 'package:portfolio/model/project_model.dart';

class Projects extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: ListView(
        children: [
          Text(
            "My Projects",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(height: 12),
          ProjectCard(
            project: ProjectModel(
              title: "Restockly",
              desc: "A Restaurant stock Management Mobile application with Manager and staff Roles",
              imgUrl: "https://yt3.googleusercontent.com/ytc/AIdro_nqx_sCd8ZIeIcodS0sfeMKJ8rVTslmQHUe_udwGNH2Pg=s900-c-k-c0x00ffffff-no-rj",
              tech: ["Flutter", "Firebase", "Dart"],
              url: "https://github.com/madhav-gaur/Restockly",
            ),
          ),

          ProjectCard(
            project: ProjectModel(
              title: "Weather App",
              desc: "A real time weather app where you could add your city and see weather details ",
              imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq-pXv-pxeHDbgovSL7Sr2nEZ7E2gK_eJSGJQ2UuKiDQ&s=10",
              tech: ["Flutter", "Weather API", "Dart"],
              url: "https://github.com/madhav-gaur/Weather-flutter-app",
            ),
          ),
          ProjectCard(
            project: ProjectModel(
              title: "Planexa",
              desc: "A Project Management web platform where users can create Workspaces, add Members, Create Projects and assign tasks",
              imgUrl: "https://media.licdn.com/dms/image/v2/D562DAQF7wzuRn9EUaQ/profile-treasury-image-shrink_480_480/B56aAqrtH5KcAU-/0/1787422495555?e=1788688800&v=beta&t=NouiQ2pXcNY5oFU39V9CP359CcPcFRAa1JBRatl-Wc0",
              tech: ["React.js", "MongoDB", "Node.js", "CSS", "Express.js"],
              url: "https://planexa-web.vercel.app/",
            ),
          ),
          ProjectCard(
            project: ProjectModel(
              title: "Blinkit Clone",
              desc: "A web Ecommerce Clone with Admin and user roles.\n You could order and track products",
              imgUrl: "https://media.licdn.com/dms/image/v2/D562DAQENDaithm8BjQ/profile-treasury-image-shrink_480_480/B56aAqv6iEGUAU-/0/1787423598933?e=1788688800&v=beta&t=UiNxdJhO8H3hXeFzMZ-SG3irG1Qp0C5IjeVvPlCnyIA",
              tech: ["React.js", "MongoDB", "Node.js", "CSS", "Express.js"],
              url: "https://blinkit-clone-wi73.vercel.app/",
            ),
          ),
        ],
      ),
    );
  }
}
