import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rael_state_app/screens/home_screen.dart';
import 'package:rael_state_app/widgets/main/home_banner.dart';
import 'package:rael_state_app/widgets/main/icon_info.dart';
import 'package:rael_state_app/widgets/main/projects.dart';
import 'package:rael_state_app/widgets/main/recommendation.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeBanner(),
              IconInfo(),
              Projects(),
              RecommendationPage(),
            ],
          )),
    );
  }
}
