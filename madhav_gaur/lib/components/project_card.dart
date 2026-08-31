import 'package:flutter/material.dart';
import 'package:portfolio/components/product_bottom_modal_sheet.dart';
import 'package:portfolio/model/project_model.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const new({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.white,
            showDragHandle: true,
            context: context,
            builder: (context) {
              return ProductBottomModalSheet(project: project,);
            },
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 4),
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            // color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.network(
                      project.imgUrl,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(project.desc,),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Wrap(
                children: [
                  for (String curr in project.tech)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Chip(
                        padding: EdgeInsets.zero,
                        color: WidgetStatePropertyAll(
                          Color.fromARGB(255, 233, 236, 255),
                        ),
                        side: BorderSide.none,
                        label: Text(
                          curr,
                          style: TextStyle(
                            color: Colors.blueAccent.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
