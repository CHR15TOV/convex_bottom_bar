import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../convex_bottom_bar.dart';
import 'blend_image_icon.dart';
import 'transition_container.dart';

/// Convex shape is moved after selection
class ReactTabStyle extends DelegateBuilder {
  final List<TabItem> items;
  final Color activeColor;
  final Color color;
  final Curve curve;

  ReactTabStyle({this.items, this.activeColor, this.color, this.curve});

  @override
  Widget build(BuildContext context, int index, bool active) {
    var item = items[index];
    if (active) {
      return Container(
        height: ACTION_LAYOUT_SIZE,
        padding: const EdgeInsets.only(bottom: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TransitionContainer.scale(
              child: BlendImageIcon(
                item.activeIcon ?? item.icon,
                color: item.blend ? activeColor : null,
                size: ACTION_INNER_BUTTON_SIZE,
              ),
              curve: curve,
            ),
            Text(item.title, style: TextStyle(color: activeColor))
          ],
        ),
      );
    }
    return Container(
      height: BAR_HEIGHT,
      padding: const EdgeInsets.only(bottom: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          BlendImageIcon(item.icon, color: item.blend ? color : null),
          Text(item.title, style: TextStyle(color: color))
        ],
      ),
    );
  }
}
