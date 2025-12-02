import 'package:bookflip_mobile/features/guest/presentation/widgets/screen_1.dart';
import 'package:bookflip_mobile/features/guest/presentation/widgets/screen_2.dart';
import 'package:bookflip_mobile/features/guest/presentation/widgets/screen_3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcnui;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends shadcnui.StatefulWidget {
  const IntroScreen({super.key});
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends shadcnui.State<IntroScreen> {
  PageController pageController = PageController();
  String buttonText = "Skip";
  String? nextButton = "Next";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,

            onPageChanged: (index) => {
              if (index == 2)
                {buttonText = "Finish", nextButton = ""}
              else
                {buttonText = "Skip", nextButton = "Next"},
              setState(() {}),
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Screen1()),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Screen2()),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Screen3()),
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(onTap: () => {
                  // GoRoute(path: '/login').
                  context.go('/login')
                }, child: Text(buttonText)),
                SmoothPageIndicator(controller: pageController, count: 3),
                GestureDetector(onTap: () => {}, child:  Text(nextButton!)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
