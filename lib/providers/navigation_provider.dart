import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// The navigation provider class.
/// This class is used to manage the navigation state
/// of the application.
class NavigationProvider extends GetxController {
  /// =========================================================================
  /// Constructors
  /// =========================================================================

  /// The constructure of the navigation provider.
  NavigationProvider();

  /// =========================================================================
  /// Properties
  /// =========================================================================

  /// The list of navigation destinations.
  final List<NavigationDestination> _destinations = <NavigationDestination>[
    NavigationDestination(
      title: 'Home',
      icon: Icons.home,
    ),
    NavigationDestination(
      title: 'Settings',
      icon: Icons.settings,
    ),
  ];

  /// The selected index of the navigation.
  final RxInt _selectedIndex = 0.obs;

  /// The expanded variable to check whether the navigation is expanded.
  final RxBool _isExpanded = false.obs;

  /// =========================================================================
  /// Getters & Setters
  /// =========================================================================

  /// The method to set the selected index.
  set selectedIndex(int index) {
    _selectedIndex.value = index;
  }

  /// The method to set the expanded state.
  set isExpanded(bool value) {
    _isExpanded.value = value;
  }

  /// The method to get the selected index.
  int get selectedIndex => _selectedIndex.value;

  /// The method to get the list of navigation destinations.
  List<NavigationDestination> get destinations => _destinations;

  /// The method to get the expanded state.
  bool get isExpanded => _isExpanded.value;
}

/// The navigation destination class.
/// This template is used to define the destination
/// object for expandability and consistency
class NavigationDestination {
  /// The constructure of the navigation destination.
  NavigationDestination({
    required this.title,
    required this.icon,
  });

  /// The title of the destination.
  final String title;

  /// The icon of the destination.
  final IconData icon;
}
