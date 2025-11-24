import 'package:bookflip_mobile/ui/core/themes/default.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class GuestTextContainer extends StatefulWidget {
  const GuestTextContainer({super.key, required this.texts});
  final List<String> texts;

  @override
  State<GuestTextContainer> createState() => _GuestTextContainerState();
}

class _GuestTextContainerState extends State<GuestTextContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _btnController;
  late Animation<Offset> _btnSlide;

  @override
  void initState() {
    super.initState();

    // Slide-up animation for button
    _btnController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );

    _btnSlide = Tween<Offset>(
      begin: const Offset(0, 1), // start below screen
      end: Offset.zero,          // ends in normal position
    ).animate(
      CurvedAnimation(parent: _btnController, curve: Curves.easeOut),
    );

    // Start the animation after page builds
    Future.delayed(const Duration(milliseconds: 500), () {
      _btnController.forward();
    });
  }

  @override
  void dispose() {
    _btnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20),
      decoration: const BoxDecoration(gradient: AppDesign.bgGradient),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          // ⭐ GLOW BEHIND LOTTIE ⭐
          Stack(
            alignment: Alignment.center,
            children: [
              // Glow
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.35),
                      blurRadius: 140,
                      spreadRadius: 40,
                    ),
                  ],
                ),
              ),

              // Lottie
              Lottie.asset(
                'lottie/book1.json',
                height: 220,
                fit: BoxFit.contain,
              ),
            ],
          ),

          // ⭐ REPEATING ANIMATED TEXT ⭐
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: AnimatedTextKit(
              repeatForever: true,       // <--- makes animation repeat
              pause: const Duration(milliseconds: 800),
              animatedTexts: widget.texts.map((text) {
                return TyperAnimatedText(
                  text,
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  speed: const Duration(milliseconds: 55),
                );
              }).toList(),
            ),
          ),

          // ⭐ SLIDE-UP BUTTON ⭐
          SlideTransition(
            position: _btnSlide,
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("  Get Started  "),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
