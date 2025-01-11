import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        width: MediaQuery.of(context).size.width * 0.5,
        child: DropdownButtonFormField(
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(10),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none))),
          items: [
            DropdownMenuItem(
              value: "Pre",
              child: Text("Cash",
                  style: GoogleFonts.ubuntu(
                      fontSize: MediaQuery.sizeOf(context).height * 0.02,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff4F623D))),
            ),
            DropdownMenuItem(
                value: "I",
                child: Text("Kartu Kredit",
                    style: GoogleFonts.ubuntu(
                        fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff4F623D)))),
            DropdownMenuItem(
                value: "II",
                child: Text("Debit",
                    style: GoogleFonts.ubuntu(
                        fontSize: MediaQuery.sizeOf(context).height * 0.02,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff4F623D))))
          ],
          onChanged: (String? value) {},
        ),
      ),
    );
  }
}
