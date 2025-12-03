import 'package:flutter/material.dart' as material;
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class MainAppShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const MainAppShell({super.key, required this.navigationShell});

  NavigationItem buildButton(String label, IconData icon) {
    return NavigationItem(
      // style: const ButtonStyle.muted(density: ButtonDensity.icon),
      // selectedStyle: const ButtonStyle.fixed(density: ButtonDensity.icon),
      // label: Text(label),
      child: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    NavigationBarAlignment alignment = NavigationBarAlignment.spaceAround;
    bool expands = true;
    NavigationLabelType labelType = NavigationLabelType.none;
    bool expanded = true;
    return  Scaffold(
        // The body automatically shows the content of the currently selected branch
        footers: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: NavigationBar(
              // backgroundColor: Colors.black,
              alignment: alignment,
              labelType: labelType,
              expanded: expanded,
              expands: expands,
              onSelected: (index) {
                navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                );
              },
              index: navigationShell.currentIndex,
              children: [
                buildButton('Home', BootstrapIcons.house),
                buildButton('Explore', BootstrapIcons.compass),
                buildButton('Library', BootstrapIcons.musicNoteList),
                buildButton('Profile', BootstrapIcons.person),
                buildButton('App', BootstrapIcons.appIndicator),
              ],
            ),
          ),
        ],
        child: navigationShell,
    );
  }
}
