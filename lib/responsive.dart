import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
      required this.desktop,
      this.tablet,
      this.mobileLarge,
      required this.mobile});
  final Widget desktop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget mobile;

  static bool isDesctop(context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarge(context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMobile(context) {
    return MediaQuery.of(context).size.width <= 500;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 450 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}
