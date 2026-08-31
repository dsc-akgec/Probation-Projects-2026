import 'package:flutter/material.dart';
import 'package:portfolio/components/profile_button.dart';

class Home extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topStart,
              end: AlignmentGeometry.bottomStart,
              colors: [Colors.blue.shade100, Colors.white],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            child: Column(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://media.licdn.com/dms/image/v2/D5603AQFiR8dWDEmwuw/profile-displayphoto-crop_800_800/B56Zj2C7UCHUAM-/0/1756474619858?e=1789603200&v=beta&t=O1-_ir3gvyOyK_bdtROyZ8a5SdeSFzcqgKoprN9IDII',
                    fit: BoxFit.contain,
                    height: 100,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Madhav Gaur',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  textAlign: TextAlign.center,
                ),

                Text(
                  'Flutter Developer | MERN STACK',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 16),
                Text(
                  "I build beautiful responsive and user-friendly mobile applications using Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 24),
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
                // SizedBox(height: 24),
              ],
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 24),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         "About Me",
        //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
