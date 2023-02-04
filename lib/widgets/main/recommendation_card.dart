import 'package:flutter/material.dart';
import 'package:rael_state_app/constants.dart';

import '../../models/recomendation.dart';

class RecommendationCard extends StatelessWidget {
  final Recommendation recommendation;
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      color: kSecondaryColor,
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: TextStyle(
              height: 1.5,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
