import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.only(
                left: MediaQuery.sizeOf(context).width * 0.04,
                top: MediaQuery.sizeOf(context).height * 0.01,
                right: MediaQuery.sizeOf(context).width * 0.04),
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffFAF1E4), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: SafeArea(
              child: body,
            )));
  }
}
