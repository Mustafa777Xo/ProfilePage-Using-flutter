import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profile_page/pages/profile_page/widgets/customIcons.dart';

class TheHeader extends StatelessWidget {
  const TheHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: MyIcons(
        icon: Icons.arrow_back_ios,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Shoroud',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Badge(
            badgeContent: const Icon(
              Icons.check,
              color: Colors.white,
              size: 8.0,
            ),
            badgeColor: Colors.blue,
          ),
        ],
      ),
      actions: <Widget>[
        MyIcons(icon: Icons.more_horiz),
      ],
    );
  }
}
