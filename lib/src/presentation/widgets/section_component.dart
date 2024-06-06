import 'package:flutter/material.dart';

class SectionComponent extends StatelessWidget {
  final Color color;
  final double minHeight;
  final Widget child;
  final String? asset;
  final double innerPadding;

  const SectionComponent({
    super.key,
    required this.child,
    required this.innerPadding,
    this.asset,
    this.color = Colors.transparent,
    this.minHeight = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (asset != null)
          Container(
            width: double.maxFinite,
            constraints: BoxConstraints(
              minHeight: minHeight,
            ),
            child: Image.asset(
              asset!,
              fit: BoxFit.cover,
              height: minHeight,
            ),
          ),
        Container(
          color: color,
          width: double.maxFinite,
          padding: EdgeInsets.all(innerPadding),
          constraints: BoxConstraints(minHeight: minHeight),
          child: child,
        ),
      ],
    );
  }
}
