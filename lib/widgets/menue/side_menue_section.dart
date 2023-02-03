import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rael_state_app/constants.dart';
import 'package:rael_state_app/widgets/menue/contact_info.dart';
import 'package:rael_state_app/widgets/menue/goals.dart';
import 'package:rael_state_app/widgets/menue/logo.dart';

class SideMenueSection extends StatelessWidget {
  const SideMenueSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const Logo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ContactInfo(),
                    const Divider(),
                    const Goals(),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/download.svg'),
                          const SizedBox(
                            width: kDefaultPadding / 2,
                          ),
                          Text(
                            'Download Braucher',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: kDefaultPadding * 2,
                      ),
                      color: kSecondaryColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/icons/github.svg'),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/icons/twitter.svg'),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: SvgPicture.asset('assets/icons/dribble.svg'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
