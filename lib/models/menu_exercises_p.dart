import 'package:flutter/material.dart' show IconData, Widget;

class MenuPosterior {

  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  MenuPosterior({
    required this.route,
    required this.icon,
    required this.name,
    required this.screen
  });

}