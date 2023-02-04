import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rael_state_app/constants.dart';
import 'package:rael_state_app/models/projects.dart';
import 'package:rael_state_app/responsive.dart';
import 'package:rael_state_app/widgets/main/projects_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          desktop: bulidGridView(
              itemCount: demoProjects.length,
              asbectRatio: 0.6,
              crossAxisCount: 3,
              itemBulider: (context, index) {
                return ProjectsCard(
                  projects: demoProjects[index],
                );
              }),
          mobile: bulidGridView(
              itemCount: demoProjects.length,
              asbectRatio: 0.6,
              crossAxisCount: 1,
              itemBulider: (context, index) {
                return ProjectsCard(
                  projects: demoProjects[index],
                );
              }),
          tablet: bulidGridView(
              itemCount: demoProjects.length,
              asbectRatio: 0.6,
              crossAxisCount: MediaQuery.of(context).size.width > 900 ? 3 : 2,
              itemBulider: (context, index) {
                return ProjectsCard(
                  projects: demoProjects[index],
                );
              }),
          mobileLarge: bulidGridView(
              itemCount: demoProjects.length,
              asbectRatio: 0.6,
              crossAxisCount: 2,
              itemBulider: (context, index) {
                return ProjectsCard(
                  projects: demoProjects[index],
                );
              }),
        )
      ],
    );
  }

  GridView bulidGridView({
    required int itemCount,
    required int crossAxisCount,
    required double asbectRatio,
    required IndexedWidgetBuilder itemBulider,
  }) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: asbectRatio,
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder: itemBulider);
  }
}
