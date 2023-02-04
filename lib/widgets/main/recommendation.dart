import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rael_state_app/constants.dart';
import 'package:rael_state_app/models/recomendation.dart';
import 'package:rael_state_app/widgets/main/recommendation_card.dart';

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    demoRecommendations.length,
                    (index) => Padding(
                          padding: EdgeInsets.only(
                            right: kDefaultPadding,
                          ),
                          child: RecommendationCard(
                            recommendation: demoRecommendations[index],
                          ),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
