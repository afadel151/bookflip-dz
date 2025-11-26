import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;
import 'package:flutter/material.dart';


class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  @override
  Widget build(BuildContext context) {
  final typography = shadcn.Theme.of(context).typography;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        shadcn.SizedBox(
          height: 300,
          child: Image.asset('images/reading-1.png')),
        SizedBox(height: 40,),
        shadcn.Text("your next read is closer than you think",style: typography.h2,textAlign: TextAlign.center,),
        SizedBox(height: 10),
        shadcn.Text(
          "your next read is closer than you think your next read is closer than you think your next read is closer than you think",
          style: typography.p,
          textAlign: TextAlign.center,
          ),

      ],
    );
  }
}
