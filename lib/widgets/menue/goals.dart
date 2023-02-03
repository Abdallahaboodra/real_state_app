import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rael_state_app/constants.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        bulidGoals(text: 'Planning stage'),
        bulidGoals(text: 'development'),
        bulidGoals(text: 'Excuation Phase'),
        bulidGoals(text: 'New Way to Living'),
      ],
    );
  }

  Padding bulidGoals({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
