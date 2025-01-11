import 'package:flutter/material.dart';
import '../controllers/item_controller.dart';
import '../models/cart_model.dart';
import 'payment_page.dart';
import '../widgets/background_widget.dart';
import '../widgets/box_cart_widget.dart';
import '../widgets/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.cart});

  final Cart cart;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalPrice = 0;
  @override
  void initState() {
    super.initState();
    if (widget.cart.cartMap.isNotEmpty) {
      totalPrice = widget.cart.calculateCart(widget.cart);
    }
  }
  void _clearCart() {
    setState(() {
      widget.cart.cartMap.clear();
      totalPrice = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        body:
        Column(
      children: [
        Stack(
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
                "Keranjang",
                style: GoogleFonts.ubuntu(
                    fontSize: MediaQuery.of(context).size.height * 0.033,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff4F623D)),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Color(0xff4F623D),
                  size: 28,
                ),
                onPressed: () {
                  // Tampilkan dialog konfirmasi
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Hapus Semua Item',
                          style: GoogleFonts.ubuntu(
                            color: const Color(0xff4F623D),
                          ),
                        ),
                        content: Text(
                          'Apakah Anda yakin ingin menghapus semua item dari keranjang?',
                          style: GoogleFonts.ubuntu(),
                        ),
                        actions: [
                          TextButton(
                            child: Text(
                              'Batal',
                              style: GoogleFonts.ubuntu(
                                color: const Color(0xff4F623D),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: Text(
                              'Hapus',
                              style: GoogleFonts.ubuntu(
                                color: Colors.red,
                              ),
                            ),
                            onPressed: () {
                              _clearCart();
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.685,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: widget.cart.cartMap.length,
              itemBuilder: (BuildContext context, int index) {
                List<Widget> widgets = [];
                for (var key in widget.cart.cartMap.keys) {
                  for (int i = 0; i < ItemController().food.length; i++) {
                    if (key == ItemController().food[i].name) {
                      widgets
                          .add(BoxCart(item: ItemController().food[i]));
                    }
                  }

                  for (int i = 0; i < ItemController().extras.length; i++) {
                    if (key == ItemController().extras[i].name) {
                      widgets.add(BoxCart(item: ItemController().extras[i]));
                    }
                  }
                }

                if (index < widgets.length) {
                  return widgets[index];
                } else {
                  return const SizedBox();
                }
              }),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Harga",
                style: GoogleFonts.ubuntu(
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff4F623D))),
            Text("\Rp.$totalPrice",
                style: GoogleFonts.ubuntu(
                    fontSize: MediaQuery.of(context).size.height * 0.028,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff4F623D)))
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.018,
        ),
        CustomButton(
            textButton: "Bayar",
            buttonFunc: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PaymentScreen();
              }));
            }),
      ],
    ));
  }
}
