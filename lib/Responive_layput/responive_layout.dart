import 'package:flutter/material.dart';
import 'package:instagram/Responive_layput/mobile_layout.dart';
import 'package:instagram/Responive_layput/web_layout.dart';

import '../utils/dimention.dart';

class ResponsiveLayout extends StatelessWidget {
  final dynamic weblayout;
  final dynamic mobilelayout;
  const ResponsiveLayout({super.key,required this.weblayout, required this.mobilelayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight >= weblayoutwidth) {
          return const WebLayout();
        } else {
          return const MobileLayout();
        }
      },
    );
  }
}
