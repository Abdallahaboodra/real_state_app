import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rael_state_app/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        bulidContactInfo(
          title: 'Address',
          text: 'Station Street 5',
        ),
        bulidContactInfo(
          title: 'country',
          text: 'egypy',
        ),
        bulidContactInfo(
          title: 'Email',
          text: 'abdallahaboodra295@gmail.com',
        ),
        bulidContactInfo(
          title: 'Mobile',
          text: '01277045167',
        ),
        bulidContactInfo(
          title: 'website',
          text: 'example@website.com',
        ),
      ],
    );
  }

  Padding bulidContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
