import 'package:flutter/material.dart';
import 'package:portfolio/components/skill_card.dart';

class Skills extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: ListView(
        children: [
          Text(
            "Technical Skills",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10

            ),
            children: [
              SkillCard(
                imgUrl: "https://yt3.googleusercontent.com/ytc/AIdro_nqx_sCd8ZIeIcodS0sfeMKJ8rVTslmQHUe_udwGNH2Pg=s900-c-k-c0x00ffffff-no-rj",
                skill: "Flutter",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFJhOQsI_U4o0iIFsXFACz-SkYASMh0uKe_KQczXjgkw&s=10",
                skill: "Firebase",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX4mZCEDMSJuTyD3WMEcpRK76qbrYmvBMW4Ml11M1bvg&s=10",
                skill: "Java",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsQE1p5QAVLr0Yy47CBslR94ocF3q_nWEjJc8t8r5-2A&s=10",
                skill: "HTML",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvt02SIwKYIBkizRbXZpNwwC18h7yPR6IRETm41AD_sg&s=10",
                skill: "CSS",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs9uFuOpk6wldSG7xKXJGiJGaUFrRy1sWSj114rhZzYQ&s=10",
                skill: "JavaScript",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTe5dze-_MPeW0kI3KQrU1arrx5U8tU3J58C0_ZrPAgWw&s",
                skill: "React",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRljkVQPOhZ92huIRQd4s9avU13n-NbKHSf-G0e5HgCSw&s=10",
                skill: "Mongodb",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzHUxKg_Shps7lIUd_dGGNYJrs0aqqh-fNqE2H11CmhQ&s=10",
                skill: "Node.js",
              ),
              SkillCard(
                imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3mYNDKDp_F-mCa4AvEbEw2WlD_Bfmw-EBd7FbLfIA7Q&s=10",
                skill: "Git | Github",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
