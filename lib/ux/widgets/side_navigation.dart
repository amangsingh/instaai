import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instaai/providers/providers_index.dart';

/// The side navigation widget.
/// This widget shows a navigation row on the side of the main
/// content.
class SideNavigation extends StatelessWidget {
  /// The constructure of the side navigation widget.
  const SideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final navProvider = Get.find<NavigationProvider>();

    return Obx(
      () => NavigationRail(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        destinations: navProvider.destinations
            .map(
              (destination) => NavigationRailDestination(
                icon: Icon(destination.icon),
                label: Text(destination.title),
              ),
            )
            .toList(),
        selectedIndex: navProvider.selectedIndex,
        onDestinationSelected: (int index) {
          navProvider.selectedIndex = index;
        },
        extended: navProvider.isExpanded,
      ),
    );
  }
}
