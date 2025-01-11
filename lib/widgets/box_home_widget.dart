import 'package:flutter/material.dart';
import '../models/cart_model.dart';
import '../models/item_model.dart';
import '../pages/details_page.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({
    required this.item,
    required this.cart,
    Key? key,
  }) : super(key: key);

  final Item item;
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [Color(0xffc3dbed), Colors.white],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          item: item,
                          cart: cart,
                        )));
          },
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Image.asset(item.image),
                ),
                Text(
                  item.name,
                  style: GoogleFonts.ubuntu(
                    height: 0.9,
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff4F623D),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.03),
                  child: Row(
                    children: [
                      Text("\Rp.",
                          style: GoogleFonts.ubuntu(
                              height: 0.9,
                              fontSize: MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff4F623D))),
                      Text(
                        item.price.toStringAsFixed(2),
                        style: GoogleFonts.ubuntu(
                          height: 0.9,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff4F623D),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
