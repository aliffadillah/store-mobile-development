import 'package:flutter/material.dart';
import '../models/cart_model.dart';
import '../models/item_model.dart';
import '../widgets/background_widget.dart';
import '../widgets/box_details_widget.dart';
import '../widgets/button_widget.dart';
import '../widgets/header2_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.item, required this.cart});

  final Cart cart;
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundContainer(
            body: Column(
      children: [
        const Header2(title: "Detail"),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        DetailContainer(assetPath: item.image),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(item.name,
            style: GoogleFonts.ubuntu(
                fontSize: MediaQuery.sizeOf(context).height * 0.038,
                fontWeight: FontWeight.w700,
                color: const Color(0xff4F623D))),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.83,
          child: Text(item.description,
              textAlign: TextAlign.justify,
              style: GoogleFonts.ubuntu(
                  fontSize: MediaQuery.sizeOf(context).height * 0.023,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff4F623D))),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.83,
          child: Row(
            children: [
              Icon(
                Icons.schedule,
                size: MediaQuery.of(context).size.height * 0.05,
                color: const Color(0xff4F623D),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.015,
              ),
              Text("20 Menit",
                  style: GoogleFonts.ubuntu(
                      fontSize: MediaQuery.sizeOf(context).height * 0.025,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff4F623D))),
              const Spacer(),
              Text("\Rp.${item.price.toStringAsFixed(2)}",
                  style: GoogleFonts.ubuntu(
                      fontSize: MediaQuery.sizeOf(context).height * 0.025,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff4F623D)))
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        CustomButton(
          textButton: "Tambah Ke Keranjang",
          buttonFunc: () {
            if (!cart.addtoCart(item)) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Peringatan"),
                    content: const Text(
                        "Item Telah Ditambahkan Ke Keranjang, Tidak Bisa Menambahkan Lagi"),
                    actions: <Widget>[
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
        )
      ],
    )));
  }
}
