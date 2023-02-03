import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rael_state_app/widgets/main/main_section.dart';
import 'package:rael_state_app/widgets/menue/side_menue_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSection});
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1440),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 2,
                  child: SideMenueSection(),
                ),
                Expanded(
                  flex: 7,
                  child: mainSection,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
