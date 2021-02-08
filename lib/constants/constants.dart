import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:home_with_friends/views/home_view.dart';

// name text style constant
const kNameTextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

// amount text style constant
const kAmountTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

// details text style constant
const kDetailTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.normal,
  color: Colors.blue,
);

const kFriendsTextStyle = TextStyle(
    fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black);
//List of tiles with sizes
List<StaggeredTile> cardTile = const <StaggeredTile>[
  StaggeredTile.count(3, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(2, 1),
  StaggeredTile.count(3, 2),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
  StaggeredTile.count(1, 1),
];

//List of Images to be used in Staggered GridView
List<Widget> imageTile = <Widget>[
  BackGroundTile(image: 'apples'),
  BackGroundTile(image: 'bird'),
  BackGroundTile(image: 'blue_flowers'),
  BackGroundTile(image: 'candle'),
  BackGroundTile(image: 'cat'),
  BackGroundTile(image: 'cookies'),
  BackGroundTile(image: 'dancer'),
  BackGroundTile(image: 'deer'),
  BackGroundTile(image: 'driving'),
  BackGroundTile(image: 'drum'),
  BackGroundTile(image: 'father_son'),
  BackGroundTile(image: 'fish_dish'),
  BackGroundTile(image: 'fly'),
  BackGroundTile(image: 'fruit'),
  BackGroundTile(image: 'knot'),
  BackGroundTile(image: 'man_think'),
  BackGroundTile(image: 'parrot'),
  BackGroundTile(image: 'pears'),
  BackGroundTile(image: 'poor_man'),
  BackGroundTile(image: 'puppy'),
];
