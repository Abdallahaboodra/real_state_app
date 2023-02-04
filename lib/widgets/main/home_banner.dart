import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rael_state_app/constants.dart';
import 'package:rael_state_app/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1 : 1.7,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'assets/images/background.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          color: kDarkColor.withOpacity(
            0.10,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Responsive.isDesctop(context)
                  ? Text(
                      'Bulid Agreat Future \n for all of us!',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  : Text(
                      'Bulid Agreat Future \n for all of us!',
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                    horizontal: kDefaultPadding * 2,
                  ),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {},
                child: const Text(
                  'Contact us',
                  style: TextStyle(
                    color: kDarkColor,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
