import 'package:bookflip_mobile/config/theme/default.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class MainAppShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  final String title;
  const MainAppShell({
    super.key,
    required this.navigationShell,
    required this.title,
  });

  NavigationItem buildButton(String label, IconData icon) {
    return NavigationItem(
      style: const ButtonStyle.muted(
        density: ButtonDensity.icon,
        size: ButtonSize.normal,
      ),
      // selectedStyle: const ButtonStyle.fixed(density: ButtonDensity.icon),
      label: Text(label),
      child: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    NavigationBarAlignment alignment = NavigationBarAlignment.center;
    bool expands = false;
    NavigationLabelType labelType = NavigationLabelType.all;
    bool expanded = true;
    
    return SafeArea(
      child: ShadcnLayer(
        theme: AppDesign.appTheme,
        child: Scaffold(
          headers: [
            AppBar(title: Text(title)),
            Divider()
          ],
          footers: [
            NavigationBar(
              backgroundColor: Colors.white,
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
                buildButton('Explore', BootstrapIcons.search),
                buildButton('Library', BootstrapIcons.bookshelf),
                buildButton('Profile', BootstrapIcons.person),
                buildButton('Chats', BootstrapIcons.chat),
                buildButton('Settings', BootstrapIcons.gear),
              ],
            ),
          ],
          child: navigationShell,
        ),
      ),
    );
  }
}
