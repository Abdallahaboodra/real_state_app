import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rael_state_app/constants.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
            color: kSecondaryColor,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 100,
                ),
                const Spacer(),
                Text(
                  'Real State',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const Text(
                  'Modern home with \n great intirior design',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    height: 1.5,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            )));
  }
}
