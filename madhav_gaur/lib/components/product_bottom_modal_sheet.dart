import 'package:flutter/material.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/utils/url_launcher.dart';

class ProductBottomModalSheet extends StatelessWidget {
  final ProjectModel project;
  const new({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
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
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  project.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  project.desc,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 12),
                if (project.url != null)
                  ElevatedButton(
                    onPressed: () {
                      openUrl(project.url!);
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 53, 87, 237),
                      ),
                      foregroundColor: WidgetStatePropertyAll(Colors.white),
                    ),
                    child: Text(
                      "View Project",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Text(
            "Tech Used",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
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
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                // co: WidgetStatePropertyAll(
                //   Color.fromARGB(255, 53, 87, 237),
                // ),
                side: WidgetStatePropertyAll(
                  BorderSide(
                    color: Color.fromARGB(255, 53, 87, 237),
                    width: 1.5,
                  ),
                ),
                foregroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 53, 87, 237),
                ),
              ),
              child: Text(
                "Close",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
