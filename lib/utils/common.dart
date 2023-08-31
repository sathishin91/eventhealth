import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

BoxDecoration boxDecoration(
    {double radius = 2, Color color = Colors.transparent, Color? bgColor}) {
  return BoxDecoration(
    color: bgColor,
    // boxShadow: showShadow ?? [const BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}

// Common Widgets

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
          image: const AssetImage("assets/logos/logo_big.png"), height: 160.h),
    );
  }
}
