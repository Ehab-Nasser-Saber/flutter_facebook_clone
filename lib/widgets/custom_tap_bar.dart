import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';

class CustomTapBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function onTap;

  const CustomTapBar(
      {Key key,
      @required this.icons,
      @required this.selectedIndex,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
          border:
              Border(top: BorderSide(color: Palette.facebookBlue, width: 3))),
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == selectedIndex
                        ? Palette.facebookBlue
                        : Colors.black45,
                    size: 30,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
