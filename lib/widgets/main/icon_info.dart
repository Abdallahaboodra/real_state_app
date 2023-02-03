import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rael_state_app/constants.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          bulidIconInfo(
            context: context,
            icon: Icons.supervisor_account,
            text: '67+',
            lable: 'Clients',
          ),
          bulidIconInfo(
            context: context,
            icon: Icons.location_on,
            text: '139+',
            lable: 'Projects',
          ),
          bulidIconInfo(
            context: context,
            icon: Icons.public,
            text: '30+',
            lable: 'conturies',
          ),
          bulidIconInfo(
            context: context,
            icon: Icons.star,
            text: '13K+',
            lable: 'Stars',
          ),
        ],
      ),
    );
  }

  Column bulidIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String lable,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 45,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: kPrimaryColor,
                fontSize: 25,
              ),
        ),
        Text(
          lable,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
