import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatelessWidget {
  final IconData icons;
  final Color color;

  const IconWidget({super.key, required this.icons, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: FaIcon(icons, color: color, size: 50),
    );
  }
}
