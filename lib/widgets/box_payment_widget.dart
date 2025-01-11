import 'package:flutter/material.dart';

class BoxPayment extends StatelessWidget {
  const BoxPayment(
      {super.key,
      required this.height,
      required this.width,
      required this.body});

  final double height;
  final double width;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xffc3dbed), Colors.white],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(20)),
      child: body,
    );
  }
}
