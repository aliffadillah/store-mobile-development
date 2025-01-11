import 'package:flutter/material.dart';
import '../controllers/item_controller.dart';
import '../models/cart_model.dart';
import '../widgets/background_widget.dart';
import '../widgets/box_home_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/title_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.cart});
  final Cart cart;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(cart: widget.cart),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.02,
        ),
        Text("Silahkan Pesan!",
            style: GoogleFonts.ubuntu(
                fontSize: MediaQuery.sizeOf(context).height * 0.023,
                color: const Color(0xff4F623D))),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.045,
        ),
        const TitleText(text: "Makanan"),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.01,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.23,
          child: ListView.builder(
            itemCount: ItemController().food.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return BoxContainer(
                item: ItemController().food[index],
                cart: widget.cart,
              );
            },
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        const TitleText(text: "Extra"),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.01,
        ),
        SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.23,
            child: ListView.builder(
              itemCount: ItemController().extras.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return BoxContainer(
                  item: ItemController().extras[index],
                  cart: widget.cart,
                );
              },
            )),
      ],
    ));
  }
}
