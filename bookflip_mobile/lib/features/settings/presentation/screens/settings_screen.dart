import 'package:bookflip_mobile/features/auth/presentation/controllers/auth.controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  bool _darkModeEnabled = false;

  Future<void> logOut() async {
    try {
      await ref.read(authControllerProvider.notifier).logOutUser();
      print("logged out");
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SettingScreenItem(
          text: "Edit editable",
          onTap: () {
            print("Edit editable");
          },
        ),
        Divider(),
        SettingScreenItem(
          text: "App theme",
          onTap: () {
            print("Edit editable");
          },
        ),
        Divider(),

        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("dark mode"),
              Switch(
                value: _darkModeEnabled,
                onChanged: (newValue) {
                  setState(() {
                    _darkModeEnabled = newValue;
                  });
                },
              ),
            ],
          ),
        ),
        SettingScreenItem(
          text: "Logout",
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Caution'),
                  content: const Text('Are you sure you want to log out ?'),
                  actions: [
                    // Secondary action to cancel/dismiss.
                    OutlineButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        // Close the dialog.
                        Navigator.pop(context);
                      },
                    ),
                    // Primary action to accept/confirm.
                    DestructiveButton(
                      child: const Text('Log out'),
                      onPressed: () {
                        // Close the dialog. In real apps, perform work before closing.
                        Navigator.pop(context);
                        logOut();
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class SettingScreenItem extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const SettingScreenItem({super.key, required this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Clickable(
      onPressed: onTap,
      child: SizedBox(
        height: 50,
        child: Button(
          style: ButtonStyle(variance: ButtonVariance.fixed),
        
          // padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Text(text), Icon(BootstrapIcons.chevronRight)],
          ),
        ),
      ),
    );
  }
}
