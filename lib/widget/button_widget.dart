import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;
  final ButtonStyle style;
  final VoidCallback onTapped;
  final VoidCallback onLongPressed;

  const ButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.child,
    required this.onTapped,
    required this.onLongPressed,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: InkWell(onTap: onTapped, onLongPress: onLongPressed, child: child),
    );
  }
}
