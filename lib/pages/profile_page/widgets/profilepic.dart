import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 5,
            ),
            shape: BoxShape.circle,
          ),
          child: Container(
            margin: EdgeInsets.all(4),
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 156, 42, 176),
                width: 5,
              ),
              shape: BoxShape.circle,
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://www.svg.com/img/gallery/the-untold-truth-of-shroud/intro-1530039722.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 60.0,
          child: Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            elevation: 20.0,
            badgeColor: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            badgeContent: Text('LIVE',
                style: TextStyle(color: Colors.white, fontSize: 15.0)),
          ),
        ),
      ],
    );
    ;
  }
}
