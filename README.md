![preview](doc/preview.png)

Language: [English](README.md) | [中文简体](README-zh.md)

# convex_bottom_bar

[![Pub](https://img.shields.io/pub/v/convex_bottom_bar.svg)](https://pub.dartlang.org/packages/convex_bottom_bar)
[![github](https://img.shields.io/badge/platform-flutter-ff69b4.svg)](https://github.com/hacktons/convex_bottom_bar)
[![Codemagic build status](https://api.codemagic.io/apps/5db10f597d3edb001a6ede16/5db10f597d3edb001a6ede15/status_badge.svg)](https://codemagic.io/apps/5db10f597d3edb001a6ede16/5db10f597d3edb001a6ede15/latest_build)

The official BottomAppBar can only display a notch FAB with app bar, sometimes we need a convex FAB. This ConvexAppBar is inspired by BottomAppBar and NotchShape's implementation.

>Example can be found at [http://hacktons.cn/convex_bottom_bar](http://hacktons.cn/convex_bottom_bar)  
*PS: Based on flutter-web and github-pages*

Here are some supported style:

|            **fixed**             |            **react**             |
| :------------------------------: | :------------------------------: |
|    ![](doc/appbar-fixed.gif)     |    ![](doc/appbar-react.gif)     |
|         **fixedCircle**          |         **reactCircle**          |
| ![](doc/appbar-fixed-circle.gif) | ![](doc/appbar-react-circle.gif) |
|      **gradient backgound**      |          **tab image**           |
|   ![](doc/appbar-gradient.gif)   |    ![](doc/appbar-image.gif)     |

**Install Demo** [app-release-arm64.apk](doc/app-release-arm64.apk)


## How to use
Typically ConvexAppBar can work with `Scaffold` by setup its `bottomNavigationBar`.

The `ConvexAppBar` has to two constructors, the `ConvexAppBar()` will use default style to simplify the tab creation.

Add this to your package's pubspec.yaml file, use the [latest version](https://pub.dev/packages/convex_bottom_bar#-installing-tab-):

```yaml
dependencies:
  convex_bottom_bar: ^1.3.0
```

```dart
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

Scaffold(
  bottomNavigationBar: ConvexAppBar(
    items: TAB_ITEMS,
    style: _style.value,
    curve: _curve.value,
    backgroundColor: _babColor,
    onTap: (int i) => setState(() {
      _selectedIndex = i;
    }),
  )
);
```

## Table of contents

- [Theming](#theming)

- [Custom Example](#custom-example)

- [Contribution](#contribution)

- [Help](#help)

## Theming
The bar will use default style, you may want to theme it. Here are some supported attributes:

![](doc/appbar-theming.png)

| Attributes      | Description                           |
| --------------- | ------------------------------------- |
| backgroundColor | AppBar background                     |
| gradient        | gradient will override backgroundColor|
| height          | AppBar height                         |
| color           | tab icon/text color                   |
| activeColor     | tab icon/text color **when selected** |
| curveSize       | size of the convex shape              |
| top   | top edge of the convex shape relative to AppBar |
| style | style to describe the convex shape: **fixed, fixedCircle, react, reactCircle** |

![](doc/appbar-demo.gif)

## Custom Example

If the default style does not match with your situation， try with `ConvexAppBar.builder()`, which allow you to custom nearly all the tab features.

```dart
Scaffold(
  bottomNavigationBar: ConvexAppBar.builder(
    count: items.length,
    backgroundColor: _tabBackgroundColor,
    style: TabStyle.fixed,
    builder: _CustomBuilder(items, _tabBackgroundColor),
  )
);
```
## FAQ

* [Using an image instead of an icon for actionItem](doc/issue-image-for-actionitem.md)
* [Is there anyway to remove elevation in the bottom bar?](doc/issue-remove-elevation.md) 

## Contribution
Please file feature requests and bugs at the [issue tracker](https://github.com/hacktons/convex_bottom_bar/issues).

## Help
For more detail, please refer to the [example](example) project.