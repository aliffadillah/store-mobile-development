import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.textButton, required this.buttonFunc});

  final String textButton;
  final Function buttonFunc;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.7,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                backgroundColor: const Color(0xff7A8B66),
              ),
              onPressed: () {
                buttonFunc();
              },
              child: Text(textButton,
                  style: GoogleFonts.ubuntu(
                      fontSize: MediaQuery.sizeOf(context).height * 0.03,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
            )));
  }
}
