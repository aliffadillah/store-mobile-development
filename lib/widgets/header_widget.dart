import 'package:flutter/material.dart';
import '../models/cart_model.dart';
import '../pages/cart_pages.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.cart});

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Shofood",
          style: GoogleFonts.ubuntu(
              fontSize: MediaQuery.sizeOf(context).height * 0.038,
              fontWeight: FontWeight.w700,
              color: const Color(0xff4F623D)),
        ),
        IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CartScreen(
                  cart: cart,
                );
              }));
            },
            icon: Icon(
              Icons.shopping_bag_rounded,
              size: MediaQuery.sizeOf(context).width * 0.09,
              color: const Color(0xff4F623D),
            ))
      ],
    );
  }
}
