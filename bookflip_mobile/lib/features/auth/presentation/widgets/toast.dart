import 'package:shadcn_flutter/shadcn_flutter.dart';
Widget buildToast(BuildContext context, ToastOverlay overlay) {
  return SurfaceCard(
    child: Basic(
      title: const Text('Event has been created'),
      subtitle: const Text('Sunday, July 07, 2024 at 12:00 PM'),
      trailing: PrimaryButton(
          size: ButtonSize.small,
          onPressed: () {
            // Close the toast programmatically when clicking Undo.
            overlay.close();
          },
          child: const Text('Undo')),
      trailingAlignment: Alignment.center,
    ),
  );
}