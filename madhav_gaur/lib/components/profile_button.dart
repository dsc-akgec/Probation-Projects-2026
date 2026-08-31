import 'package:flutter/material.dart';
import 'package:portfolio/utils/url_launcher.dart';

Widget profileButtons(String url, img, text) {
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: () => openUrl(url),
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade500),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [
          Image.network(img, width: 40),
          SizedBox(width: 6),
          Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}
