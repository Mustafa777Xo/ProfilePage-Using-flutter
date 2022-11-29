import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Followers extends StatelessWidget {
  const Followers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 8.0,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            profileDetails('123', 'Following'),
            const VerticalDivider(
              width: 30,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.grey,
            ),
            profileDetails('10M', 'Followers'),
            const VerticalDivider(
              width: 30,
              thickness: 1,
              indent: 20,
              endIndent: 0,
              color: Colors.grey,
            ),
            profileDetails('199', 'Videos'),
          ],
        ),
      ),
    );
  }

  Column profileDetails(String t1, String t2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          t1,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w900, fontSize: 20.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          t2,
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    );
  }
}
