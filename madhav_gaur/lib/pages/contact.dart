import 'package:flutter/material.dart';
import 'package:portfolio/components/list_item.dart';
import 'package:portfolio/components/profile_button.dart';

class Contact extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: ListView(
        children: [
          Text(
            "Get in Touch",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12),
          ListItem(
            icon: Icons.mail,
            title: "Email",
            subtitle: "madhavgaur799@gmail.com",
          ),
          ListItem(icon: Icons.phone, title: "Phone", subtitle: "963********"),
          ListItem(
            icon: Icons.location_on,
            title: "Location",
            subtitle: "Ghaziabad, India",
          ),

          SizedBox(height: 12),
          Text(
            "Connect with Me",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              profileButtons(
                "https://github.com/madhav-gaur",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwPs4aLjB6PrVFbGobXz0h7wluc7p07sCyaPnyTHvWSA&s=10",
                "Github",
              ),

              SizedBox(width: 12),

              profileButtons(
                'https://www.linkedin.com/in/themadhavgaur/',
                'https://images.rawpixel.com/image_png_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjk4Mi1kMS0xMC5wbmc.png',
                "LinkedIn",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
