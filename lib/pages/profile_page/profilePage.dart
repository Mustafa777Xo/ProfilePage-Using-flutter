import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profile_page/pages/profile_page/widgets/followBtn.dart';
import 'package:profile_page/pages/profile_page/widgets/followers&vid.dart';
import 'package:profile_page/pages/profile_page/widgets/profilepic.dart';
import 'package:profile_page/pages/profile_page/widgets/theHeader.dart';
import 'package:profile_page/pages/profile_page/widgets/vid.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child: const TheHeader(),
          ),
        ),
        body: DefaultTabController(
          length: 2,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                const ProfilePic(),
                const SizedBox(
                  height: 12.0,
                ),
                infoText(),
                const SizedBox(
                  height: 20.0,
                ),
                const Followers(),
                const SizedBox(
                  height: 20.0,
                ),
                const FollowBtn(),
                const SizedBox(
                  height: 20.0,
                ),
                const TabBar(
                  indicatorWeight: 5,
                  indicatorColor: Colors.deepPurple,
                  tabs: [
                    Tab(text: 'Recent Brodcast'),
                    Tab(text: 'Highlight & uploads'),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    VidCard(),
                    VidCard(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Center infoText() {
    return Center(
      child: Column(
        children: const [
          Text(
            '@shrouddrill',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'am back baby \n Watch me stream everyday',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
