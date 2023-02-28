import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: (Icons.search),
                iconSize: 30,
                onPressed: () {},
              ),
              CircleButton(
                icon: (MdiIcons.facebookMessenger),
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
              child: CreatePostContainer(
            currentUser: currentUser,
          )),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          )
        ],
      ),
    );
  }
}