import 'package:bookflip_mobile/ui/guest/widgets/guest_text_container.dart';
import 'package:flutter/material.dart';

class GuestHome extends StatelessWidget {
  const GuestHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold background is set to a neutral color or transparent
    return Scaffold(
      // We removed the solid color from Scaffold to avoid it showing up if the Container doesn't cover all
      backgroundColor: Colors.white, 
      body: GuestTextContainer(texts: ["Your next read","is Closer","Than you think"],),
    );
  }
}
