import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  final String imgUrl;
  final String skill;
  const SkillCard({super.key, required this.imgUrl, required this.skill});
  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imgUrl, fit: BoxFit.contain, width: 125, height: 125,),
          Text(skill, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        ],
      ),
    );
  }
}
