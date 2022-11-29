import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyIcons extends StatelessWidget {
  IconData icon;
  MyIcons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 55.0,
        height: 55.0,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: BoxShape.circle,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ));
  }
}
