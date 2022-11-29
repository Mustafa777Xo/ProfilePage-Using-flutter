import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VidCard extends StatelessWidget {
  const VidCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Container(
            height: 150.0,
            width: 150,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.svg.com/img/gallery/the-untold-truth-of-shroud/intro-1530039722.jpg'),
                  fit: BoxFit.fill),
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Badge(
              shape: BadgeShape.square,
              badgeColor: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
              badgeContent:
                  Text('3:22:12', style: TextStyle(color: Colors.white)),
            ),
          ),
        ]),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Chill Stream Tonight -...',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          '122K views  .  6 days ago',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ),
      ],
    );
  }
}
