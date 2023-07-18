import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenlayout;
  final Widget webScreenlayout;

  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenlayout,
      required this.webScreenlayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          //Web layout
          return webScreenlayout;
        }
        //Mobile layout
        return mobileScreenlayout;
      },
    );
  }
}
