import 'package:flutter/material.dart';
import 'package:rael_state_app/constants.dart';

import '../../models/projects.dart';

class ProjectsCard extends StatelessWidget {
  final Project projects;
  const ProjectsCard({
    required this.projects,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            projects.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            projects.title!,
            style: Theme.of(context).textTheme.subtitle2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              projects.description!,
              style: TextStyle(
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "More Info>",
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
