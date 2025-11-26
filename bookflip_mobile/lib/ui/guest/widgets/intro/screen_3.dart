
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    final typography = shadcn.Theme.of(context).typography;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        shadcn.SizedBox(
          height: 300,
          child: Image.asset('images/reading-3.png')),
        SizedBox(height: 40,),
        shadcn.Text("Track and ask previous owners",style: typography.h2,textAlign: TextAlign.center),
        SizedBox(height: 10),
        shadcn.Text(
          "your next read is closer than you think your next read is closer than you think your next read is closer than you think",
          style: typography.p,textAlign: TextAlign.center),

      ],
    );
  }
}
