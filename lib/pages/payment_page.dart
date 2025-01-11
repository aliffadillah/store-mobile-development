import 'package:flutter/material.dart';
import '../models/cart_model.dart';
import 'home_page.dart';
import '../widgets/background_widget.dart';
import '../widgets/box_payment_widget.dart';
import '../widgets/button_widget.dart';
import '../widgets/dropdownmenu_widget.dart';
import '../widgets/header2_widget.dart';
import '../widgets/textfield_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Header2(title: "Pembayaran"),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          BoxPayment(
              height: 0.27,
              width: 0.8,
              body: Column(
                children: [
                  Text("Informasi Pembayaran",
                      style: GoogleFonts.ubuntu(
                          fontSize: MediaQuery.sizeOf(context).height * 0.025,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff4F623D))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: CustomTextField(nameController: nameController),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.017,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Pilih Pembayaran",
                        style: GoogleFonts.ubuntu(
                            fontSize: MediaQuery.sizeOf(context).height * 0.022,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff4F623D))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  const CustomDropDownMenu()
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          CustomButton(
              textButton: "Pesan Sekarang",
              buttonFunc: () {
                if (nameController.text.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Peringatan"),
                        content: const Text("Harap Isi Nama Anda!"),
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
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Pembayaran Berhasil"),
                        content: const Text(
                            "Mohon Tunggu, Pesanan Anda Sedang Diproses!"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text("OK"),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                Map<String, double> cartMap = {};
                                Cart cart = Cart(cartMap: cartMap);
                                return HomeScreen(cart: cart);
                              }));
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              })
        ],
      ),
    ));
  }
}
