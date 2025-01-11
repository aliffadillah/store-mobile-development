import 'package:flutter/material.dart';
import '../models/item_model.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxCart extends StatelessWidget {
  const BoxCart({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.011),
      height: MediaQuery.of(context).size.height * 0.195,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xffc3dbed), Colors.white],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.152,
                    child: Image.asset(item.image)),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name,
                      style: GoogleFonts.ubuntu(
                        height: 0.9,
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff4F623D),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.56,
                    child: Text(item.description,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.ubuntu(
                          height: 0.9,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff4F623D),
                        )),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05),
                child: Text("Harga:",
                    style: GoogleFonts.ubuntu(
                      height: 1,
                      fontSize: MediaQuery.of(context).size.height * 0.027,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff4F623D),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.05),
                child: Text("\Rp.${item.price.toStringAsFixed(2)}",
                    style: GoogleFonts.ubuntu(
                      height: 1.1,
                      fontSize: MediaQuery.of(context).size.height * 0.027,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff4F623D),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
