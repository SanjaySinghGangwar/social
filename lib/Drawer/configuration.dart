import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<BoxShadow> shadowList = [
  const BoxShadow(color: Colors.grey, blurRadius: 30, offset: Offset(0, 10))
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.home, 'title': 'HOME'},
  {'icon': Icons.social_distance, 'title': 'FRIENDS'},
  {'icon': FontAwesomeIcons.search, 'title': 'SEARCH'},
  {'icon': Icons.favorite, 'title': 'FAVORITES'},
  {'icon': Icons.mail, 'title': 'MESSAGES'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'PROFILE'},
];
