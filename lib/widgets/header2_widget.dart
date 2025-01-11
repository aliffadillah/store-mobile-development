import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header2 extends StatefulWidget {
  const Header2({super.key, required this.title});

  final String title;

  @override
  State<Header2> createState() => _HeaderSecundaryState();
}

class _HeaderSecundaryState extends State<Header2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,
                  size: MediaQuery.of(context).size.height * 0.04,
                  color: const Color.fromARGB(255, 74, 85, 64))),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: GoogleFonts.ubuntu(
                fontSize: MediaQuery.of(context).size.height * 0.033,
                fontWeight: FontWeight.w700,
                color: const Color(0xff4F623D)),
          ),
        )
      ],
    );
  }
}
