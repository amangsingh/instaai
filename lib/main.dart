import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instaai/providers/providers_index.dart';
import 'package:instaai/ux/dashboard.dart';
import 'package:instaai/ux/widgets/widgets_index.dart';

void main() {
  runApp(const InstaAI());
}

/// The main application widget.
class InstaAI extends StatelessWidget {
  /// The constructure of the main application widget.
  const InstaAI({super.key});

  @override
  Widget build(BuildContext context) {
    // Initializing the providers
    Get.put(NavigationProvider());

    return GetMaterialApp(
      title: 'InstaAI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amberAccent,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

/// The home page widget.
class HomePage extends StatefulWidget {
  /// The constructure of the home page widget.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late NavigationProvider navProvider;
  late TabController tabController;

  @override
  void initState() {
    navProvider = Get.find<NavigationProvider>();
    tabController = TabController(
      length: navProvider.destinations.length,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Obx(
                  () => SizedBox(
                    width: 80,
                    child: IconButton(
                      icon: Icon(
                        navProvider.isExpanded
                            ? Icons.arrow_circle_left
                            : Icons.arrow_circle_right,
                      ),
                      onPressed: () {
                        navProvider.isExpanded = !navProvider.isExpanded;
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'InstaAI',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                const SideNavigation(),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Obx(
                        () {
                          tabController.index = navProvider.selectedIndex;

                          return TabBarView(
                            controller: tabController,
                            children: const [
                              Center(
                                child: Dashboard(),
                              ),
                              Center(
                                child: Text('Settings'),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
