import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.ubuntu(
            fontSize: MediaQuery.sizeOf(context).height * 0.033,
            fontWeight: FontWeight.w700,
            color: const Color(0xff4F623D)));
  }
}
